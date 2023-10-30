// Function to fetch the username and update the span.
function fetchUsername() {
    fetch('/username')
    .then(response => response.json())
    .then(data => {
        const usernameSpan = document.getElementById('username');
        const loggedInDropdown = document.querySelector('.dropdown-content');
        const loggedOutDropdown = document.getElementById('logged-out-dropdown'); // We'll create this element in the next step

        if (data.loggedIn) {
            usernameSpan.textContent = data.username;
            if (loggedOutDropdown) {
                loggedOutDropdown.style.display = 'none';
            }
            let profilePicElement = document.getElementById('pfp');
            profilePicElement.src = '/public/profilepictures/' + data.username + '.png';
        } else {
            usernameSpan.textContent = 'Log in / Register';
            loggedInDropdown.style.display = 'none';
            if (!loggedOutDropdown) {
                // Create the logged-out dropdown
                const dropdown = document.createElement('div');
                dropdown.id = 'logged-out-dropdown';
                dropdown.innerHTML = `
                    <a href="/login">Login</a>
                    <a href="/register">Register</a>
                `;
                document.querySelector('.dropdown').appendChild(dropdown);
            }
        }
    })
    .catch(error => {
        console.error('Error fetching username:', error);
    });
}


// Call the function when the DOM content has been loaded.
fetchUsername();