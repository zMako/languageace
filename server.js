const express = require('express');
const mongoose = require('mongoose');
const bcrypt = require('bcryptjs');
const session = require('express-session');

const app = express();

// Connect to MongoDB

const multer = require('multer');
const sharp = require('sharp');

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, './public/profilepictures');
  },
  filename: function (req, file, cb) {
    const ext = file.mimetype === 'image/jpeg' ? '.png' : '.png'; // Always save as .png
    cb(null, req.body.username + ext);
  }
});

const upload = multer({ storage: storage });
mongoose.connect('mongodb://localhost:27017/languageace', {
    useNewUrlParser: true,
    useUnifiedTopology: true,
});

const UserSchema = new mongoose.Schema({
    username: String,
    password: String,
});

const User = mongoose.model('User', UserSchema);

app.use(express.static('public'));
app.post('/logout', (req, res) => {
    req.session.destroy(err => {
        if (err) {
            return res.redirect('/');
        }
        res.clearCookie(SESSION_NAME);
        res.redirect('/');
    });
});
app.use(express.static(__dirname));

app.use(express.urlencoded({ extended: false }));
app.use(session({
    secret: 'secret_key',
    resave: false,
    saveUninitialized: true,
}));

// Your routes here...

app.listen(3000, () => {
    console.log('Server started on http://localhost:3000');
});

app.get('/register', (req, res) => {
    if (req.session.userId) {
            return res.redirect('/');
    }
    res.sendFile(__dirname + '/register.html');
});

app.post('/register', upload.single('profilePicture'), async (req, res) => {
    // Your existing registration logic here...
  
    // If the uploaded file is .jpg, convert it to .png
    if (req.file && req.file.mimetype === 'image/jpeg') {
      try {
        await sharp(req.file.path)
          .toFile(req.file.path.replace('.jpg', '.png'));
      } catch (error) {
        console.error('Error converting image:', error);
      }
    }
  
    // Continue with the rest of the registration logic:
    const hashedPassword = await bcrypt.hash(req.body.password, 10);
      const user = new User({
          username: req.body.username,
          password: hashedPassword,
      });
      await user.save();
      res.redirect('/login');
  });

app.get('/login', (req, res) => {
    if (req.session.userId) {
            return res.redirect('/');
    }
    res.sendFile(__dirname + '/login.html');
});

app.post('/login', async (req, res) => {
    const user = await User.findOne({ username: req.body.username });
    if (user && await bcrypt.compare(req.body.password, user.password)) {
        req.session.userId = user._id;
        res.redirect('/');
    } else {
        res.redirect('/login');
    }
});

app.get('/logout', (req, res) => {
    req.session.destroy();
    res.redirect('/');
});

app.get('/username', async (req, res) => {
    console.log('Session data:', req.session);
    console.log('User ID:', req.session.userId);
    if (req.session && req.session.userId) {
        try {
            // Fetch the username from the database using the userId from the session
            const user = await User.findById(req.session.userId);
            if (user) {
                res.json({ username: user.username, loggedIn: true });
            } else {
                res.json({ loggedIn: false });
            }
        } catch (err) {
            console.error('Error fetching user:', err);
            res.json({ loggedIn: false });
        }
    } else {
        res.json({ loggedIn: false });
    }
});

app.use((req, res, next) => {
    res.locals.username = null;

    if (req.session.userId) {
        User.findById(req.session.userId, (err, user) => {
            if (user) {
                res.locals.username = user.username;
            }
            next();
        });
    } else {
        next();
    }
});

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});
