document.addEventListener('DOMContentLoaded', function () {
    var header = document.getElementById('header');
    fetch('/header.html')
        .then(response => response.text())
        .then(data => {
            header.innerHTML = data;

            // Execute scripts within the loaded content
            var scripts = header.getElementsByTagName('script');
            for (var i = 0; i < scripts.length; i++) {
                var newScript = document.createElement('script');
                if (scripts[i].src) {
                    newScript.src = scripts[i].src;
                } else {
                    newScript.textContent = scripts[i].textContent;
                }
                document.body.appendChild(newScript);
            }
        });
});
