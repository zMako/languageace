from boto3 import Session
from botocore.exceptions import BotoCoreError, ClientError
import json
import os
import sys
from contextlib import closing

def getSounds():
    try:
        session = Session()
        polly = session.client("polly")
    except:
        print("Couldn't connect to Amazon Polly. Please check your network!")
    
    # Open the words.json file for reading
    with open('vocabulary/words.json', 'r') as json_file:
        # Load the JSON data
        data = json.load(json_file)
        
        # Iterate through each entry in the JSON data
        # RISKY PART: ENSURE NO ERROR - API REQUEST LOOP - FOREVER LOOP MAY CAUSE SIGNIFICANT FUND DRAIN
        for entry in data:
            if os.path.exists(f"vocabulary/sounds/{entry['id']}-spanish.mp3"): # not os.path.exists(f"vocabulary/sounds/{entry['id']}-english.mp3") and not os.path.exists(f"vocabulary/sounds/{entry['id']}-spanish.mp3"):
                try:
                    # Request speech synthesis
                    # Print "id": "English"
                    print(f'"{entry["id"]}": "{entry["english"]}"')
                    responseEnglish = polly.synthesize_speech(Text=entry["english"], OutputFormat="mp3", VoiceId="Matthew", LanguageCode="en-US")
                    # Print "id": "Spanish"
                    print(f'"{entry["id"]}": "{entry["spanish"]}"')
                    responseSpanish = polly.synthesize_speech(Text=entry["spanish"], OutputFormat="mp3", VoiceId="Lucia", LanguageCode="es-ES")
                except (BotoCoreError, ClientError) as error:
                    # The service returned an error, exit gracefully
                    print(error)
                    sys.exit(-1)

                # Access the audio stream from the response
                if "AudioStream" in responseEnglish and "AudioStream" in responseSpanish:
                    # Note: Closing the stream is important because the service throttles on the
                    # number of parallel connections. Here we are using contextlib.closing to
                    # ensure the close method of the stream object will be called automatically
                    # at the end of the with statement's scope.
                        with closing(responseEnglish["AudioStream"]) as stream:
                           output = os.path.join(f"vocabulary/sounds/{entry['id']}-english.mp3")
                           try:
                            # Open a file for writing the output as a binary stream
                                with open(output, "wb") as file:
                                   file.write(stream.read())
                           except IOError as error:
                              # Could not write to file, exit gracefully
                              print(error)
                              sys.exit(-1)

                        with closing(responseSpanish["AudioStream"]) as stream:
                           output = os.path.join(f"vocabulary/sounds/{entry['id']}-spanish.mp3")
                           try:
                            # Open a file for writing the output as a binary stream
                                with open(output, "wb") as file:
                                   file.write(stream.read())
                           except IOError as error:
                              # Could not write to file, exit gracefully
                              print(error)
                              sys.exit(-1)

                else:
                    # The response didn't contain audio data, exit gracefully
                    print("Could not stream audio")
                    sys.exit(-1)

                print(f"Words no: {entry['id']} saved into mp3 files!")
            else:
                print(f"Narrative no: {entry['id']} already saved in mp3 file!")

getSounds()