
let currentWordIndex = 0;
let incorrectWords = [];
let words = [];
let unit = 0;
fetch('./vocabulary/words.json')
    .then(response => response.json())
    .then(data => {
        const urlParams = new URLSearchParams(window.location.search);
        unit = urlParams.get('unit') || 1;
        console.log(unit);
        if (unit == 1) {
            words = data.filter(word => word.id >= 71 && word.id <= 84);
        } else if (unit == 2) {
            words = data.filter(word => word.id >= 85 && word.id <= 109);
        } else if (unit == 3) {
            words = data.filter(word => word.id >= 159 && word.id <= 197);
        } else if (unit == 4) {
            words = data.filter(word => word.id >= 234 && word.id <= 277);
        } else if (unit == 5) {
            words = data.filter(word => word.id >= 54 && word.id <= 70);
        } else if (unit == 6) {
            words = data.filter(word => word.id >= 26 && word.id <= 53);
        } else if (unit == 7) {
            words = data.filter(word => word.id >= 110 && word.id <= 158);
        } else if (unit == 8) {
            words = data.filter(word => word.id >= 278 && word.id <= 327);
        } else if (unit == 9) {
            words = data.filter(word => word.id >= 198 && word.id <= 233);
        } else if (unit == 10) {
            words = data.filter(word => word.id >= 1 && word.id <= 25);
        } else {
            console.log("Invalid unit number.");
        }
        console.log(words)
        displayWord();
    })
    .catch(error => console.error('Error fetching words:', error));

let correctCount = 0;
function displayWord() {
    
    const wordImage = document.getElementById('wordImage');
    if (currentWordIndex < words.length) {
        if (wordImage) {
            wordImage.src = `./vocabulary/images/${words[currentWordIndex].id}.jpg`;
        } else {
            const newImage = document.createElement('img');
            newImage.id = 'wordImage';
            newImage.src = `./vocabulary/images/${words[currentWordIndex].id}.jpg`;
            newImage.alt = 'Word Image';
            newImage.className = 'flashcard-image';
            document.getElementById('flashcard').prepend(newImage);
        }
    }
    if (currentWordIndex == 0) {
        playWordSound(words[currentWordIndex].id, 'english');
    }
    if (currentWordIndex < words.length) {
        console.log(currentWordIndex);
        console.log(words.length);
        if (incorrectWords.length > 0 && currentWordIndex === words.length - 1) {
            correctCount = 0;
            words = words.concat(incorrectWords);
            incorrectWords = [];
        }
        document.querySelector('.english').textContent = words[currentWordIndex].english;
        document.querySelector('.english').style.display = 'block';
        document.querySelector('.spanish').style.display = 'none';
        document.querySelector('.spanish').textContent = words[currentWordIndex].spanish;
    } else {
        console.log(currentWordIndex)
        // Redirect to index page when all words are shown
        window.location.href = 'index.html';
    }
}

let isEnglishDisplayed = true;
let isSpanishDisplayed = false;

const playWordSound = (wordId, language) => {
    const audioPath = `./vocabulary/sounds/${wordId}-${language}.mp3`;
    const audio = new Audio(audioPath);
    audio.play();
};

document.addEventListener('click', function(event) {
    const spanish = document.querySelector('.spanish');
    const english = document.querySelector('.english');
    const flashcard = document.querySelector('.flashcard');

    if (isEnglishDisplayed && !isSpanishDisplayed) {
        console.log("Changing to spanish display now")
        english.style.display = 'none';
        spanish.style.display = 'block';
        isSpanishDisplayed = true;
        if (currentWordIndex < words.length) {
            playWordSound(words[currentWordIndex].id, 'spanish');
        }
        updateBackgroundColors();
        isEnglishDisplayed = false;
    } else if (event.clientX > (2 * window.innerWidth / 3)) {
        flashcard.style.backgroundColor = 'green';
        correctCount++;
        isEnglishDisplayed = true;
        isSpanishDisplayed = false;
        updateBackgroundColors();
        setTimeout(() => {
            flashcard.style.backgroundColor = '#f5f5f5';
            currentWordIndex++;
            if (currentWordIndex < words.length) {
                playWordSound(words[currentWordIndex].id, 'english');
            }
            displayWord();
        }, 500);
    } else if (event.clientX < window.innerWidth / 3) {
        flashcard.style.backgroundColor = 'red';
        incorrectWords.push(words[currentWordIndex]);
        isEnglishDisplayed = true;
        isSpanishDisplayed = false;
        updateBackgroundColors();
        setTimeout(() => {
            flashcard.style.backgroundColor = '#f5f5f5';
            currentWordIndex++;
            if (currentWordIndex < words.length) {
                playWordSound(words[currentWordIndex].id, 'english');
            }
            displayWord();
        }, 500);
    } else {
        isEnglishDisplayed = true;
        isSpanishDisplayed = false;
        if (currentWordIndex != 0) {
            if (currentWordIndex < words.length) {
                playWordSound(words[currentWordIndex].id, 'english');
            }
        }
        updateBackgroundColors();
        displayWord();
    }
});

const body = document.body;
    const incorrectCountElem = document.createElement('div');
    incorrectCountElem.style.position = 'absolute';
    incorrectCountElem.style.left = '10%';
    incorrectCountElem.style.top = '50%';
    incorrectCountElem.style.fontSize = '40px';
    
    const correctCountElem = document.createElement('div');
    correctCountElem.style.position = 'absolute';
    correctCountElem.style.right = '10%';
    correctCountElem.style.top = '50%';
    correctCountElem.style.fontSize = '40px';
    
    body.appendChild(incorrectCountElem);
    body.appendChild(correctCountElem);

function updateBackgroundColors() {
    incorrectCountElem.textContent = incorrectWords.length;
    correctCountElem.textContent = correctCount;
    if (isSpanishDisplayed) {
        body.style.background = 'linear-gradient(to right, #FFCCCC, #f5f5f5, #CCFFCC)';
    } else {
        body.style.background = '#f5f5f5';
    }
}

