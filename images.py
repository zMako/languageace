from google_images_search import GoogleImagesSearch
import os
import json

def images():
    # Open the words.json file for reading
    with open('vocabulary/words.json', 'r') as json_file:
        # Load the JSON data
        data = json.load(json_file)
        
        # Iterate through each entry in the JSON data
        # RISKY PART: ENSURE NO ERROR - API REQUEST LOOP - FOREVER LOOP MAY CAUSE SIGNIFICANT FUND DRAIN
        print("Entries: ", end="")
        ifalready = True
        for entry in data:
            if not os.path.exists(f"vocabulary/images/{entry['id']}.jpg"):
                try:
                    if ifalready:
                        print("already saved!")
                        ifalready = False
                    # you can provide API key and CX using arguments,
                    # or you can set environment variables: GCS_DEVELOPER_KEY, GCS_CX
                    gis = GoogleImagesSearch('API KEY', 'CX')

                    # define search params
                    # option for commonly used search param are shown below for easy reference.
                    # For param marked with '##':
                    #   - Multiselect is currently not feasible. Choose ONE option only
                    #   - This param can also be omitted from _search_params if you do not wish to define any value
                    _search_params = {
                        'q': entry['english'],
                        'num': 1,
                        'fileType': 'jpg',
                        'rights': 'cc_publicdomain',
                        'safe': 'safeUndefined',  ##
                        'imgType': 'imgTypeUndefined',  ##
                        'imgSize': 'imgSizeUndefined',  ##
                        'imgDominantColor': 'imgDominantColorUndefined',    ##
                        'imgColorType': 'color'  ##
                    }

                    # this will only search for images:
                    gis.search(search_params=_search_params)

                    # this will search, download and resize:
                    gis.search(search_params=_search_params, path_to_dir=f'vocabulary/images/', width=720, height=720, custom_image_name=f'{entry["id"]}')
                    print(f"Saved media: {entry['id']}.jpg")
                except Exception as error:
                    print("An error occured: ", error)
                    images()
            else:
                print(f"{entry['id']}, ", end="")

images()