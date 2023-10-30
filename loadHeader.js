
window.addEventListener('DOMContentLoaded', (event) => {
    fetch('/header.html')
        .then(response => response.text())
        .then(data => {
            document.getElementById('header').innerHTML = data;
        });
});