CREATE TABLE IF NOT EXISTS `Animals` (
	'word_id' INT,
    `English` VARCHAR(8) CHARACTER SET utf8,
    `Spanish` VARCHAR(8) CHARACTER SET utf8,
    `Definition` VARCHAR(104) CHARACTER SET utf8,
    `CEFR` VARCHAR(3) CHARACTER SET utf8
);
INSERT INTO `Animals` VALUES (1, 'animal', 'animal', 'any living creature that can move around', 'A1'),
	(2, 'baby', 'bebé', 'a very young animal', 'A2'),
	(3, 'bird', 'pájaro', 'an animal with wings and feathers that can usually fly', 'A1'),
	(4, 'cat', 'gato', 'a small animal that people keep as a pet, and that often kills birds, mice etc', '<A1'),
	(5, 'chicken', 'pollo', 'a farm bird that is kept for its meat and eggs', 'A1'),
	(6, 'cow', 'vaca', 'a large animal that is kept on farms and used to produce milk or meat', '<A1'),
	(7, 'dog', 'perro', 'a very common animal with four legs, fur, and a tail. Dogs are often kept as pets or as working animals.', '<A1'),
	(8, 'duck', 'pato', 'a common water bird with short legs and a wide beak', 'A1'),
	(9, 'elephant', 'elefante', 'a large grey animal with big ears and a long trunk', 'A2'),
	(10, 'fish', 'pescado', 'an animal that lives, breathes, and swims in water', '<A1'),
	(11, 'fly', 'mosca', 'a small insect with two wings', 'A2+'),
	(12, 'fox', 'zorro', 'a wild animal like a dog with red-brown fur and a thick tail', 'A2+'),
	(13, 'horse', 'caballo', 'a large animal that people ride and use for pulling things', '<A1'),
	(14, 'insect', 'insecto', 'any small creature that has six legs, for example a fly', 'A2+'),
	(15, 'lion', 'león', 'a large brown wild cat from Africa or Asia. A male lion has a mane', 'A2'),
	(16, 'mice', 'ratón', 'the plural of mouse', 'A2+'),
	(17, 'monkey', 'mono', 'a small brown animal with a long tail, which uses its hands to climb trees and lives in hot countries', 'A2+'),
	(18, 'mouse', 'ratón', 'a small furry animal with a long tail and a pointed nose', '<A1'),
	(19, 'pet', 'mascota', 'an animal that you keep at home', 'A1'),
	(20, 'pig', 'cerdo', 'a farm animal with short legs, a fat body, and a curled tail', 'A1'),
	(21, 'rabbit', 'conejo', 'a small animal with long ears and soft fur that lives in holes in the ground', 'A2+'),
	(22, 'rat', 'rata', 'an animal like a large mouse', 'A2+'),
	(23, 'sheep', 'oveja', 'a farm animal that is kept for its wool and meat', 'A1'),
	(24, 'tiger', 'tigre', 'a large wild cat with yellow and black lines on its fur', 'A2+'),
	(25, 'wolf', 'lobo', 'a wild animal similar to a large dog', 'A2+');


CREATE TABLE IF NOT EXISTS `Body` (
	'word_id' INT,
    `English` VARCHAR(8) CHARACTER SET utf8,
    `Spanish` VARCHAR(9) CHARACTER SET utf8,
    `Definition` VARCHAR(110) CHARACTER SET utf8,
    `CEFR` VARCHAR(3) CHARACTER SET utf8
);
INSERT INTO `Body` VALUES (26, 'arm', 'brazo', 'one of the two long parts of your body between your shoulders and your hands', '<A1'),
	(27, 'back', 'espalda', 'the part of your body from your neck and shoulders down to your bottom', '<A1'),
	(28, 'blood', 'sangre', 'the red liquid that flows around your body', 'A2'),
	(29, 'body', 'cuerpo', 'the physical structure of a person or animal', '<A1'),
	(30, 'bottom', 'fondo', 'the part of your body that you sit on', 'A2'),
	(31, 'ear', 'oreja', 'one of the two parts of your body that you hear with', '<A1'),
	(32, 'eye', 'ojo', 'one of the two things in your face that you see with', '<A1'),
	(33, 'face', 'cara', 'the front of your head, where your eyes, nose, and mouth are', '<A1'),
	(34, 'feet', 'pies', 'the plural of foot', '<A1'),
	(35, 'finger', 'dedo', 'one of the four long thin parts on your hand, not including your thumb', 'A1'),
	(36, 'foot', 'pie', 'the part of your body that you stand on', '<A1'),
	(37, 'hair', 'cabello', 'the mass of thin threads that grows on your head', 'A1'),
	(38, 'hand', 'mano', 'the part of your body at the end of your arm, including your fingers and thumb', '<A1'),
	(39, 'head', 'cabeza', 'the top part of your body that has your eyes, mouth, brain etc in it', '<A1'),
	(40, 'heart', 'corazón', 'the organ inside your chest that pushes blood around your body', 'A1'),
	(41, 'knee', 'rodilla', 'the middle part of your leg, where it bends', 'A2+'),
	(42, 'left', 'izquierda', 'on the side of your body that contains your heart', 'A2+'),
	(43, 'leg', 'pierna', 'one of the long parts of your body that your feet are joined to, or a similar part on an animal or insect', '<A1'),
	(44, 'lip', 'labio', 'one of the two soft parts around the outside of your mouth', 'A2+'),
	(45, 'mouth', 'boca', 'the part of your face that you use for speaking and eating', 'A1'),
	(46, 'neck', 'cuello', 'the part of your body that joins your head to your shoulders', 'A2'),
	(47, 'nose', 'nariz', 'the part of your face that you use for smelling and breathing', 'A1'),
	(48, 'right', 'derecha', 'your right side is the side with the hand that most people write with', '<A1'),
	(49, 'shoulder', 'hombro', 'one of the two parts of your body at each side of your neck where your arm is connected', 'A2'),
	(50, 'side', 'lado', 'your sides are the parts of your body on your left and your right from your shoulders to the tops of your legs', 'A2+'),
	(51, 'skin', 'piel', 'the outside part of a human''s or animal''s body', 'A1'),
	(52, 'tongue', 'lengua', 'the soft part inside your mouth that you move and use for tasting and speaking', 'A2+'),
	(53, 'tooth', 'diente', 'one of the hard white things in your mouth, used for biting food', 'A2');


CREATE TABLE IF NOT EXISTS `Clothes` (
	'word_id' INT,
    `English` VARCHAR(8) CHARACTER SET utf8,
    `Spanish` VARCHAR(10) CHARACTER SET utf8,
    `Definition` VARCHAR(125) CHARACTER SET utf8,
    `CEFR` VARCHAR(3) CHARACTER SET utf8
);
INSERT INTO `Clothes` VALUES (54, 'boot', 'bota', 'a type of shoe that covers your whole foot and the lower part of your leg', 'A2'),
	(55, 'clothes', 'ropa', 'things that people wear such as shirts, skirts, or trousers', '<A1'),
	(56, 'coat', 'abrigo', 'a piece of clothing that you wear over other clothes to keep you warm when you go outside', 'A1'),
	(57, 'dress', 'vestido', 'a piece of clothing that covers the top of the body and hangs down to cover part or all of the legs, worn especially by women', 'A1'),
	(58, 'hat', 'sombrero', 'something that you wear to cover or protect your head', 'A2'),
	(59, 'jacket', 'chaqueta', 'a short light coat', 'A2+'),
	(60, 'jeans', 'vaqueros', 'a popular type of trousers made from denim', 'A2'),
	(61, 'pair', 'par', 'two things of the same type that are used together', 'A2+'),
	(62, 'shirt', 'camisa', 'a piece of clothing for the upper part of your body and your arms that usually has a collar and has buttons down the front', 'A1'),
	(63, 'shoe', 'zapato', 'something that you wear on your foot, made of leather or another strong material', 'A1'),
	(64, 'shorts', 'pantalones cortos', 'short trousers ending at the knees', 'A2+'),
	(65, 'skirt', 'falda', 'a piece of clothing that fits around the waist and hangs down like a dress around the legs, worn especially by women', 'A2'),
	(66, 'sock', 'calcetín', 'a piece of clothing that you wear on your foot', 'A2'),
	(67, 'suit', 'traje', 'a jacket and trousers or a skirt that are made of the same material and are worn together', 'A2'),
	(68, 'T-shirt', 'camiseta', 'a soft shirt with short sleeves and no collar', 'A2+'),
	(69, 'top', 'arriba', 'a piece of clothing that you wear on the upper part of your body', 'A2+'),
	(70, 'trousers', 'pantalones', 'a piece of clothing that covers the lower part of your body, with a separate part for each leg', 'A1');


CREATE TABLE IF NOT EXISTS `Colours` (
	'word_id' INT,
    `English` VARCHAR(6) CHARACTER SET utf8,
    `Spanish` VARCHAR(9) CHARACTER SET utf8,
    `Definition` VARCHAR(57) CHARACTER SET utf8,
    `CEFR` VARCHAR(3) CHARACTER SET utf8
);
INSERT INTO `Colours` VALUES (71, 'black', 'negro', 'the dark colour of coal or night', 'A1'),
	(72, 'blue', 'azul', 'having the colour of the sky on a fine day', 'A1'),
	(73, 'bright', 'brillante', 'bright colours are strong and easy to see', 'A2+'),
	(74, 'brown', 'marrón', 'the colour of earth, wood, or coffee', 'A1'),
	(75, 'colour', 'color', 'red, blue, yellow etc', '<A1'),
	(76, 'dark', 'oscuro', 'closer to black than to white in colour', 'A2'),
	(77, 'green', 'verde', 'having the colour of grass', '<A1'),
	(78, 'grey', 'gris', 'having the colour of dark clouds, neither black nor white', 'A2+'),
	(79, 'light', 'luz', 'a light colour is pale, not dark', 'A2+'),
	(80, 'orange', 'naranja', 'a colour that is between red and yellow', 'A2'),
	(81, 'pink', 'rosado', 'pale red', 'A2'),
	(82, 'red', 'rojo', 'the colour of blood', 'A1'),
	(83, 'white', 'blanco', 'having the colour of milk, snow, or salt', '<A1'),
	(84, 'yellow', 'amarillo', 'the colour of the sun', 'A2+');


CREATE TABLE IF NOT EXISTS `Family` (
	'word_id' INT,
    `English` VARCHAR(12) CHARACTER SET utf8,
    `Spanish` VARCHAR(8) CHARACTER SET utf8,
    `Definition` VARCHAR(98) CHARACTER SET utf8,
    `CEFR` VARCHAR(3) CHARACTER SET utf8
);
	INSERT INTO `Family` VALUES (85, 'aunt', 'tía', 'the sister of your father or mother, or the wife of your uncle', 'A2+'),
	(86, 'boy', 'niño', 'a son', 'A2'),
	(87, 'brother', 'hermano', 'a man or boy who has the same parents as you', '<A1'),
	(88, 'child', 'niño', 'someone you are a parent to', '<A1'),
	(89, 'children', 'niños', 'the plural of child', '<A1'),
	(90, 'cousin', 'primo', 'a child of your aunt or uncle', 'A2+'),
	(91, 'dad', 'papá', 'father', 'A2'),
	(92, 'daddy', 'papi', 'father – used especially by children or when speaking to children', 'A2+'),
	(93, 'daughter', 'hija', 'someone''s female child', '<A1'),
	(94, 'family', 'familia', 'a group of people who are related to each other, especially parents and their children', '<A1'),
	(95, 'father', 'padre', 'a male parent', '<A1'),
	(96, 'girl', 'niña', 'a daughter', 'A2'),
	(97, 'grandchild', 'nieto', 'the child of your son or daughter', 'A2+'),
	(98, 'grandfather', 'abuelo', 'the father of your mother or father', 'A2+'),
	(99, 'grandmother', 'abuela', 'the mother of your mother or father', 'A2+'),
	(100, 'grandparents', 'abuelos', 'your grandparents are the parents of your mother or father', 'A2+'),
	(101, 'mother', 'madre', 'your female parent, or any woman who is a parent', '<A1'),
	(102, 'mum', 'mamá', 'an informal word for mother', 'A2'),
	(103, 'mummy', 'momia', 'mother – used especially by or to young children', 'A2+'),
	(104, 'parent', 'padre/madre', 'someone''s father or mother', '<A1'),
	(105, 'relationship', 'relación', 'the attitude that two people or groups show towards each other', 'A2+'),
	(106, 'relative', 'pariente', 'a member of your family', 'A2+'),
	(107, 'sister', 'hermana', 'a girl or woman who has the same parents as you', '<A1'),
	(108, 'son', 'hijo', 'someone''s male child', '<A1'),
	(109, 'uncle', 'tío', 'the brother of one of your parents, or the husband or male partner of one of your parents siblings', 'A2+');

CREATE TABLE IF NOT EXISTS `Feelings_Wishes_Opinions` (
	'word_id' INT,
    `English` VARCHAR(11) CHARACTER SET utf8,
    `Spanish` VARCHAR(11) CHARACTER SET utf8,
    `Definition` VARCHAR(142) CHARACTER SET utf8,
    `CEFR` VARCHAR(3) CHARACTER SET utf8
);
INSERT INTO `Feelings_Wishes_Opinions` VALUES (110, 'afraid', 'asustado', 'frightened because you think that you may get hurt or that something bad may happen', 'A2'),
	(111, 'angry', 'enojado', 'feeling or showing anger', 'A2+'),
	(112, 'believe', 'creer', 'to think that something is true or that someone is telling the truth', '<A1'),
	(113, 'boring', 'aburrido', 'not interesting in any way', 'A2+'),
	(114, 'call', 'llamar', 'to describe someone or something in a particular way', 'A2'),
	(115, 'cry', 'llorar', 'to produce tears from your eyes', 'A2'),
	(116, 'enjoy', 'disfrutar', 'to get pleasure from something', 'A1'),
	(117, 'exciting', 'excitante', 'making you feel excited', 'A2+'),
	(118, 'fair', 'justo', 'reasonable, right, and accepted by most people', 'A2'),
	(119, 'favourite', 'favorito', 'your favourite person or thing is the one you like most', '<A1'),
	(120, 'feel', 'sentir', 'to experience a particular physical feeling or emotion', 'A2'),
	(121, 'fun', 'diversión', 'enjoyment, or something that is enjoyable', 'A2'),
	(122, 'funny', 'gracioso', 'making you laugh', 'A2+'),
	(123, 'guess', 'adivinar', 'to answer a question or decide something without being sure whether you are right', 'A2+'),
	(124, 'happy', 'feliz', 'having feelings of pleasure, for example because something good has happened to you or because you are satisfied with your life', 'A1'),
	(125, 'hate', 'odiar', 'to dislike someone or something very much', '<A1'),
	(126, 'hope', 'esperanza', 'to want something to happen or be true, and to believe that it is possible', 'A2'),
	(127, 'idea', 'idea', 'an opinion', '<A1'),
	(128, 'impossible', 'imposible', 'something that is impossible cannot happen or be done', 'A2'),
	(129, 'interest', 'interés', 'the feeling that you want to know more about something or someone', '<A1'),
	(130, 'interested', 'interesado', 'wanting to do or have something', 'A2+'),
	(131, 'interesting', 'interesante', 'if something is interesting, it keeps your attention because it is unusual or exciting, or it contains information that you did not know about', 'A1'),
	(132, 'know', 'saber', 'to be or feel sure about something', 'A2'),
	(133, 'laugh', 'risa', 'to make sounds with your voice because you think something is funny', 'A2'),
	(134, 'like', 'gustar', 'to enjoy something or think that someone or something is nice, good, or right', 'A2'),
	(135, 'love', 'amar', 'to care about someone a lot, especially a member of your family or a close friend', 'A1'),
	(136, 'maybe', 'quizás', 'used to say that something could be true or could happen, but you are not sure', '<A1'),
	(137, 'miss', 'señorita', 'to feel sad because you cannot be with someone that you like, or cannot do something that you enjoy', 'A2+'),
	(138, 'opinion', 'opinión', 'what you think about something or someone', 'A2'),
	(139, 'perhaps', 'quizás', 'used to say that something may be true, but you are not sure', 'A2'),
	(140, 'possible', 'posible', 'something that is possible may happen or may be true, but is not certain', 'A2'),
	(141, 'prefer', 'preferir', 'to like or want someone or something more than someone or something else', 'A2+'),
	(142, 'relax', 'relajar', 'to feel calmer and less worried, or to make someone do this', 'A2+'),
	(143, 'relaxed', 'relajado', 'feeling calm, comfortable, and not worried or annoyed', 'A2+'),
	(144, 'sad', 'triste', 'not happy', 'A2+'),
	(145, 'secret', 'secreto', 'if something is secret, only a few people know about it', 'A1'),
	(146, 'smile','sonreír','a happy expression on your face, with your mouth curving','<A1'),
	(147, 'sorry', 'arrepentido', 'feeling sad about a situation and wishing it were different', 'A2'),
	(148, 'stress', 'estrés', 'a strong feeling of worry that prevents you from relaxing', '<A1'),
	(149, 'stressed', 'estresado', 'so worried and tired that you cannot relax', 'A2+'),
	(150, 'sure', 'seguro', 'certain about something', 'A1'),
	(151, 'thank', 'agradecer', 'to tell someone that you are grateful for something that they have given you or done for you', 'A2+'),
	(152, 'thank you', 'gracias', 'used to tell someone that you are grateful for something they have given you or done for you', '<A1'),
	(153, 'thanks', 'gracias', 'used to tell someone that you are grateful for something they have given you or done for you', 'A1'),
	(154, 'think', 'pensar', 'to have an opinion about someone or something', 'A2+'),
	(155, 'understand', 'entender', 'to know how someone feels and why they behave in the way they do', 'A2'),
	(156, 'unhappy', 'infeliz', 'not happy', 'A2+'),
	(157, 'want', 'querer', 'to have a desire for something', 'A1'),
	(158, 'worry', 'preocuparse', 'to keep thinking about a problem or about something bad that might happen so that you do not feel happy or relaxed', 'A2');


CREATE TABLE IF NOT EXISTS `Food_Drinks` (
	'word_id' INT,
    `English` VARCHAR(9) CHARACTER SET utf8,
    `Spanish` VARCHAR(11) CHARACTER SET utf8,
    `Definition` VARCHAR(116) CHARACTER SET utf8,
    `CEFR` VARCHAR(3) CHARACTER SET utf8
);
INSERT INTO `Food_Drinks` VALUES (159, 'alcohol', 'alcohol', 'drinks such as beer or wine that can make you drunk', 'A2'),
	(160, 'apple', 'manzana', 'a hard round fruit that has a green, red, or yellow skin and is white inside', 'A2'),
	(161, 'banana', 'plátano', 'a long curved yellow fruit', 'A2'),
	(162, 'beef', 'carne de res', 'meat from a cow', 'A2+'),
	(163, 'bread', 'pan', 'a common food made by baking a mixture of flour and water', 'A1'),
	(164, 'butter', 'mantequilla', 'a solid yellow food made from cream that you spread on bread or use in cooking', 'A2+'),
	(165, 'cake', 'pastel', 'a sweet food made by baking a mixture of flour, butter, sugar, and eggs', 'A2'),
	(166, 'cheese', 'queso', 'a solid food made from milk, that is usually white or yellow', 'A2'),
	(167, 'chicken', 'pollo', 'the meat from a chicken', 'A2'),
	(168, 'chip', 'chip', 'a long thin piece of potato cooked in oil', 'A2+'),
	(169, 'chocolate', 'chocolate', 'a sweet brown food eaten as a sweet or used in cooking', 'A1'),
	(170, 'coffee', 'café', 'a hot dark brown drink that has a slightly bitter taste', 'A1'),
	(171, 'drink', 'beber', 'liquid that you drink', '<A1'),
	(172, 'egg', 'huevo', 'an egg from a chicken that you can cook and eat', '<A1'),
	(173, 'fish', 'pescado', 'the flesh of a fish used as food', 'A1'),
	(174, 'food', 'víveres', 'things that you eat', '<A1'),
	(175, 'fruit', 'fruta', 'something such as an apple or orange, which grows on a plant, tree, or bush, and contains seeds', '<A1'),
	(176, 'ham', 'jamón', 'cooked meat from a pig that has been preserved using salt', 'A2+'),
	(177, 'ice', 'hielo', 'water that has frozen and become solid', 'A2+'),
	(178, 'ice cream', 'helado', 'a frozen sweet food with fruit, nuts, chocolate etc sometimes added to it', 'A2+'),
	(179, 'juice', 'jugo', 'the liquid from fruit or vegetables, or a drink made from this', 'A2+'),
	(180, 'lemon', 'limón', 'a yellow fruit that tastes sour', 'A2+'),
	(181, 'meat', 'carne', 'the flesh of animals and birds that people eat', 'A1'),
	(182, 'milk', 'leche', 'a white liquid produced by female animals and drunk by people, or produced by women and animals to feed their babies', 'A1'),
	(183, 'oil', 'aceite', 'a liquid that comes from plants or animals, used especially in cooking', 'A2'),
	(184, 'onion', 'cebolla', 'a round white vegetable, usually with brown skin, which has a strong smell and taste', 'A2+'),
	(185, 'orange', 'naranja', 'a juicy round fruit with a thick skin that is a colour between red and yellow', 'A2'),
	(186, 'potato', 'patata', 'a round white vegetable with a brown or pale yellow skin that grows under the ground', 'A1'),
	(187, 'rice', 'arroz', 'food that consists of small white or brown grains that are cooked in water, or the plant that produces it', 'A2'),
	(188, 'salt', 'sal', 'a natural white mineral that is added to food to make it taste better', 'A2'),
	(189, 'sandwich', 'emparedado', 'two pieces of bread with cheese, meat, egg etc between them', 'A1'),
	(190, 'soup', 'sopa', 'liquid food that usually has pieces of meat or vegetables in it', 'A2+'),
	(191, 'sugar', 'azúcar', 'a sweet substance obtained from plants and used for making food and drinks sweet', 'A1'),
	(192, 'sweet', 'dulce', 'a small piece of sweet food made of sugar or chocolate', 'A2+'),
	(193, 'tea', 'té', 'a drink made by pouring boiling water onto dried leaves, or the leaves used to make this drink', 'A1'),
	(194, 'tomato', 'tomate', 'a round soft red fruit eaten raw or cooked as a vegetable', 'A2'),
	(195, 'vegetable', 'verdura', 'a plant such as a carrot, cabbage, or potato, which you can eat', 'A2'),
	(196, 'water', 'agua', 'the clear liquid that falls as rain and is used for drinking and washing', '<A1'),
	(197, 'wine', 'vino', 'an alcoholic drink made from grapes', 'A2+');


CREATE TABLE IF NOT EXISTS `Nature` (
    'word_id' INT,
    `English` VARCHAR(11) CHARACTER SET utf8,
    `Spanish` VARCHAR(11) CHARACTER SET utf8,
    `Definition` VARCHAR(120) CHARACTER SET utf8,
    `CEFR` VARCHAR(3) CHARACTER SET utf8
);
INSERT INTO `Nature` VALUES (198, 'autumn', 'otoño', 'the season between summer and winter, when the leaves fall off the trees', 'A1'),
	(199, 'beach', 'playa', 'an area of sand or small stones at the edge of the sea', 'A2'),
	(200, 'beautiful', 'hermoso', 'very good or giving you great pleasure', 'A2'),
	(201, 'cloud', 'nube', 'a white or grey mass in the sky, from which rain sometimes falls', 'A2+'),
	(202, 'coast', 'costa', 'the land next to the sea', 'A2+'),
	(203, 'cold', 'frío', 'something that is cold has a low temperature', '<A1'),
	(204, 'desert', 'desierto', 'a large area of very hot dry land where few plants grow', 'A2+'),
	(205, 'forest', 'bosque', 'a large area of land covered with trees', 'A2'),
	(206, 'hill', 'loma', 'an area of high land, like a small mountain', 'A1'),
	(207, 'hot', 'caliente', 'having a high temperature', '<A1'),
	(208, 'island', 'isla', 'a piece of land surrounded by water', '<A1'),
	(209, 'jungle', 'jungla', 'a large tropical forest with trees and large plants growing very close together', 'A2+'),
	(210, 'lake', 'lago', 'a large area of water surrounded by land', 'A1'),
	(211, 'land', 'tierra', 'the solid dry part of the Earth''s surface', 'A1'),
	(212, 'lovely', 'bonito', 'very pleasant or enjoyable', 'A2'),
	(213, 'mountain', 'montaña', 'a very high hill', '<A1'),
	(214, 'nice', 'muy bien', 'pleasant, attractive, or enjoyable', 'A1'),
	(215, 'ocean', 'océano', 'one of the five very large areas of water in the world', 'A2'),
	(216, 'rain', 'lluvia', 'water that falls in small drops from clouds in the sky', '<A1'),
	(217, 'river', 'río', 'a long area of water that flows into a sea', '<A1'),
	(218, 'rock', 'roca', 'a large piece of stone', 'A2'),
	(219, 'sea', 'mar', 'a large area of salty water', '<A1'),
	(220, 'season', 'estación', 'one of the main periods into which a year is divided. In Europe, the four seasons are winter, spring, summer, and autumn', 'A2'),
	(221, 'sky', 'cielo', 'the space above the earth where the sun, clouds, and stars are', 'A1'),
	(222, 'snow', 'nieve', 'soft white pieces of frozen water that fall like rain', 'A1'),
	(223, 'spring', 'primavera', 'the season between winter and summer', 'A1'),
	(224, 'storm', 'tormenta', 'a period of very bad weather with a lot of wind or rain', 'A2+'),
	(225, 'summer', 'verano', 'the season between spring and autumn, when the weather is hottest', 'A1'),
	(226, 'temperature', 'temperatura', 'how hot or cold something is', 'A2+'),
	(227, 'warm', 'cálido', 'slightly hot, especially in a pleasant way', 'A2'),
	(228, 'water', 'agua', 'the clear liquid that falls as rain and is used for drinking and washing', '<A1'),
	(229, 'weather', 'tiempo', 'the temperature and other conditions such as sun, rain, and wind', 'A1'),
	(230, 'wet', 'mojado', 'rainy', 'A2+'),
	(231, 'wind', 'viento', 'a natural current of air', 'A2'),
	(232, 'winter', 'invierno', 'the season after autumn and before spring, when the weather is coldest', 'A1'),
	(233, 'wood', 'madera', 'an area of land that is covered in trees', 'A2');


CREATE TABLE IF NOT EXISTS `School` (
    'word_id' INT,
    `English` VARCHAR(13) CHARACTER SET utf8,
    `Spanish` VARCHAR(14) CHARACTER SET utf8,
    `Definition` VARCHAR(124) CHARACTER SET utf8,
    `CEFR` VARCHAR(3) CHARACTER SET utf8
);
INSERT INTO `School` VALUES (234, 'activity', 'actividad', 'something that you do for enjoyment in a regular organized way', 'A2+'),
	(235, 'beginner', 'principiante', 'someone who has just started to do or learn something', 'A2+'),
	(236, 'board', 'pizarra', 'a piece of wood or plastic on a wall where you can write or put information', '<A1'),
	(237, 'book', 'libro', 'sheets of paper that you can write on held together in a cover', '<A1'),
	(238, 'break', 'quebrar', 'a short period of free time between lessons at school', 'A2+'),
	(239, 'chair', 'silla', 'a piece of furniture for one person to sit on', '<A1'),
	(240, 'class', 'clase', 'a group of students who are taught together', 'A1'),
	(241, 'classroom', 'aula', 'a room where students are taught', 'A1'),
	(242, 'clever/smart', 'inteligente', 'someone who is clever is intelligent and understands things quickly', 'A2+'),
	(243, 'complete', 'completar', 'to write information on a form', 'A2'),
	(244, 'computer', 'ordenador', 'an electronic machine that can store and arrange large amounts of information, which can be used to do many different things', '<A1'),
	(245, 'cross', 'cruz', 'a mark (x) put on paper to show where something is or that something is not correct', 'A2+'),
	(246, 'day off', 'día libre', 'a day when you do not go to work, school etc because you have a holiday or because you are sick', 'A2'),
	(247, 'desk', 'escritorio', 'a table where you sit and write or work', 'A1'),
	(248, 'dictionary', 'diccionario', 'a book that gives a list of words in alphabetical order, with their meanings in the same or another language', 'A1'),
	(249, 'gym', 'gimnasio', 'a large room that has equipment for doing physical exercise', 'A2+'),
	(250, 'hand in', 'entregar', 'to give something to someone in authority, especially a piece of work or a document', 'A2+'),
	(251, 'holiday', 'vacaciones', 'a period when you rest and do not go to work or school', 'A1'),
	(252, 'learner', 'estudiante', 'someone who is learning to do something', 'A2'),
	(253, 'library', 'biblioteca', 'a room or building containing books that can be looked at or borrowed', 'A1'),
	(254, 'off', 'fuera', 'not at work or school because you are ill or on holiday', 'A1'),
	(255, 'paper', 'papel', 'thin material used for writing on, drawing on, wrapping things etc', 'A1'),
	(256, 'pen', 'bolígrafo', 'a thing that you use for writing and drawing in ink', 'A1'),
	(257, 'pencil', 'lápiz', 'a thing that you use for writing and drawing using the black or coloured substance in the middle', 'A2'),
	(258, 'pool', 'piscina', 'a place that has been made for people to swim in', 'A2'),
	(259, 'printer', 'impresora', 'a machine that prints documents from a computer onto paper', 'A2+'),
	(260, 'pupil', 'alumno', 'a child in a school', 'A2'),
	(261, 'record', 'grabar', 'information that is written down or stored in a computer so that it can be looked at in the future', 'A2+'),
	(262, 'report', 'informe', 'a written statement by teachers about a child''s progress at school', 'A2+'),
	(263, 'rule', 'regla', 'an official instruction about what is allowed, especially in a game, organization, or job', 'A1'),
	(264, 'school', 'escuela', 'all the students and teachers at a school', 'A2'),
	(265, 'screen', 'pantalla', 'a large white surface that a film is shown on in a cinema or in a large room', 'A2'),
	(266, 'seat', 'asiento', 'something that you can sit on, for example a chair', 'A1'),
	(267, 'skill', 'habilidad', 'an ability to do something well, especially because you have learned and practised it', 'A2'),
	(268, 'speaker', 'orador', 'someone who speaks a language', 'A2+'),
	(269, 'staff', 'personal', 'the group of people who work for an organization', 'A2+'),
	(270, 'student', 'estudiante', 'someone who studies at a school or university', '<A1'),
	(271, 'swimming pool', 'piscina', 'a structure that has been built for people to swim in', 'A2'),
	(272, 'take out', 'sacar', 'to borrow books from a library', 'A2+'),
	(273, 'teacher', 'maestro', 'someone who teaches as their job', '<A1'),
	(274, 'term', 'término', 'one of the periods of time that a school or university year is divided into', 'A2'),
	(275, 'text', 'obra literaria', 'a work of literature that you study at school or college', 'A2+'),
	(276, 'timetable', 'horario', 'a list of times of classes in a school or college', 'A2+'),
	(277, 'uniform', 'uniforme', 'a type of clothing worn by all the members of an organization, or all the children at a school', 'A2+');


CREATE TABLE IF NOT EXISTS `Jobs_Workplaces` (
    'word_id' INT,
    `English` VARCHAR(14) CHARACTER SET utf8,
    `Spanish` VARCHAR(12) CHARACTER SET utf8,
    `Definition` VARCHAR(116) CHARACTER SET utf8,
    `CEFR` VARCHAR(3) CHARACTER SET utf8
);
INSERT INTO `Jobs_Workplaces` VALUES (278, 'actor', 'actor', 'someone who performs in a play or film', 'A2'),
	(279, 'actress', 'actriz', 'a woman who performs in a play or film', 'A2+'),
	(280, 'airport', 'aeropuerto', 'a place where planes take off and land, with buildings for passengers to wait in', '<A1'),
	(281, 'army', 'ejército', 'a military force that fights wars on land', 'A2+'),
	(282, 'artist', 'artista', 'someone who produces art, especially paintings', 'A2'),
	(283, 'author', 'autor', 'someone who has written a book', 'A2'),
	(284, 'business', 'negocio', 'the activity of producing or selling goods or services, in order to make money', 'A1'),
	(285, 'businessman', 'empresario', 'a man who works in business. Some people prefer the word businessperson because it refers to a person of any gender.', 'A2+'),
	(286, 'cafe', 'cafetería', 'a small restaurant which sells drinks and simple food', 'A2'),
	(287, 'doctor', 'doctor', 'someone who is trained to treat people who are ill', '<A1'),
	(288, 'driver', 'conductor', 'someone who drives a car, truck, bus etc', 'A2'),
	(289, 'education', 'educación', 'the process of teaching and learning, usually at school, college, or university', 'A2'),
	(290, 'engineer', 'ingeniero', 'someone whose job is to repair electrical equipment or machines', 'A2+'),
	(291, 'factory', 'fábrica', 'a building where goods are produced in large quantities', 'A2+'),
	(292, 'farm', 'granja', 'an area of land used for growing crops or keeping animals', 'A1'),
	(293, 'farmer', 'agricultor', 'someone who owns or manages a farm', '<A1'),
	(294, 'hospital', 'hospital', 'a building where sick or injured people receive medical treatment', 'A2'),
	(295, 'hotel', 'hotel', 'a building where you pay to sleep and eat when you are travelling or on holiday', '<A1'),
	(296, 'industry', 'industria', 'all the companies that work in one particular type of trade or service', 'A2'),
	(297, 'job', 'trabajo', 'the work that you do regularly to earn money', '<A1'),
	(298, 'journalist', 'periodista', 'someone who writes reports for newspapers, magazines, television, or radio', 'A2+'),
	(299, 'library', 'biblioteca', 'a room or building containing books that can be looked at or borrowed', 'A1'),
	(300, 'manager', 'director', 'someone who is in charge of a business, shop, restaurant etc or of part of it', 'A2'),
	(301, 'medicine', 'medicina', 'the treatment and study of illnesses and injuries', 'A2'),
	(302, 'museum', 'museo', 'a building where people can go and see important objects relating to art, history, science etc', 'A2'),
	(303, 'nurse', 'enfermera', 'someone whose job is to look after people who are ill or injured', 'A1'),
	(304, 'office', 'oficina', 'a building that belongs to an organization, where people work', '<A1'),
	(305, 'officer', 'oficial', 'someone who has a position of authority in the army, navy etc', 'A2+');
	(306, 'owner', 'dueño', 'someone who owns something', 'A2'),
	(307, 'pilot', 'piloto', 'someone who flies a plane', 'A2'),
	(308, 'player', 'jugador', 'someone who plays a game or sport', 'A2'),
	(309, 'police officer', 'policía', 'a member of the police', 'A2+'),
	(310, 'policeman', 'policía', 'a male police officer', 'A2+'),
	(311, 'politician', 'político', 'someone who works in politics, especially someone who is elected', 'A2+'),
	(312, 'president', 'presidente', 'the official leader of a country that does not have a king or queen', 'A2+'),
	(313, 'restaurant', 'restaurante', 'a place where you can buy and eat a meal', 'A1'),
	(314, 'school', 'escuela', 'a place where children are taught', '<A1'),
	(315, 'scientist', 'científico', 'someone who studies or works in science', 'A2'),
	(316, 'shop', 'tienda', 'a building where you can buy things', '<A1'),
	(317, 'singer', 'cantante', 'someone who sings, especially as a job', 'A2+'),
	(318, 'soldier', 'soldado', 'a member of the army, especially someone who is not an officer', 'A1'),
	(319, 'guide', 'guiar', 'someone whose job is to show a place to tourists', 'A2+'),
	(320, 'teacher', 'maestro', 'someone who teaches as their job', '<A1'),
	(321, 'supermarket', 'supermercado', 'a large shop that sells food, drink, products for cleaning the house etc', 'A1'),
	(322, 'tourism', 'turismo', 'the business of providing people who are on holiday with places to stay, things to do etc', 'A2+'),
	(323, 'university', 'universidad', 'a place where students study a subject at a high level to get a degree', 'A2'),
	(324, 'vet', 'veterinario', 'someone who is trained to give medical care and treatment to sick animals', 'A2+'),
	(325, 'work', 'trabajo', 'the place where you do your job', 'A1'),
	(326, 'worker', 'trabajador', 'someone who does a particular kind of job for an organization, but who is not a manager', 'A2'),
	(327, 'writer', 'escritor', 'someone who writes books, stories etc, especially as a job', 'A2+');
