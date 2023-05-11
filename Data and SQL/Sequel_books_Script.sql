-- PROJECT START
CREATE DATABASE SEQUEL_BOOKS;
USE SEQUEL_BOOKS;

-- CREATE TABLES 
CREATE TABLE Author (
author_ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
author_Name VARCHAR(30),
author_gender CHAR(1)
) ;

CREATE TABLE Publisher (
publisher_ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
publisher_name VARCHAR(30),
publisher_city VARCHAR(30)
);

CREATE TABLE Books (
book_Id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Title varchar(100) NOT NULL,
author_ID INT NOT NULL,
Genre VARCHAR(30) NOT NULL,
Published_Year INT NOT NULL,
RRP	DECIMAL(6,2) NOT NULL,
publisher_ID INT NOT NULL,
CONSTRAINT fk_author_ID FOREIGN KEY (author_ID) REFERENCES author (author_id),
CONSTRAINT fk_publisher_ID FOREIGN KEY (publisher_id) REFERENCES publisher (publisher_id)
);

CREATE TABLE Store (
Store_ID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Location VARCHAR(30) NOT NULL
);

CREATE TABLE Stock (
store_ID INT NOT NULL,
book_ID INT, 
quantity INT,
CONSTRAINT fk_store_ID FOREIGN KEY (store_id) REFERENCES store (store_id),
CONSTRAINT fk_book_ID FOREIGN KEY (book_id) REFERENCES books (book_id),
CONSTRAINT pk_book_store PRIMARY KEY (book_id, store_id)
);


-- DATA ENTRY

INSERT INTO author (author_name, author_gender)
VALUES 
	('Gillian Flynn','F'),
	('Stephen King','M'),
	('Jane Austen','F'),
	('Kamila Shamsie','F'),
	('Toni Morrison','F'),
	('Emily Bronte','F'),
	('Margaret Atwood','M'),
	('Neal Stephenson','M'),
    ('Mary Shelley', 'F') 
    ;
    
INSERT INTO publisher (publisher_name, publisher_city)
VALUES
('Bloomsbury','London'),
('Orion', 'London'),
('I Love Books','Leeds'),
('OUP','Oxford'),
('Penguin','London'),
('Happy books','Cardiff')
;

INSERT INTO books (title, author_id, genre, published_year, rrp, publisher_id)
VALUES ('Gone Girl ',1,'Crime',2012,7.99,2),
	('Dark Places',1,'Crime',2006,10,2),
	('Sharp Objects',1,'Crime',2009,8.99,2),
	(' Carrie',2,'Horror',1974,8.99,1),
	(' ‘Salem’s Lot',2,'Horror',1975,5.99,1),
	(' The Shining',2,'Horror',1977,5.99,1),
	(' Rage',2,'Horror',1977,7.99,1),
	(' The Stand',2,'Horror',1978,10,1),
	(' Night Shift',2,'Horror',1977,8.99,1),
	(' The Long Walk',2,'Horror',1979,8.99,1),
	(' The Dead Zone',2,'Horror',1979,5.99,1),
	(' The Mist',2,'Horror',1979,5.99,1),
	(' Firestarter',2,'Horror',1980,5.99,1),
	(' Roadwork',2,'Horror',1981,5.99,1),
	(' Danse Macabre',2,'Horror',1981,7.99,1),
	(' Cujo',2,'Horror',1981,10,1),
	(' The Running Man',2,'Horror',1982,5.99,1),
	(' Different Seasons',2,'Horror',1982,5.99,1),
	(' Rita Hayworth and Shawshank Redemption',2,'Horror',1982,7.99,1),
	(' The Body',2,'Horror',1982,10,1),
	(' Apt Pupil',2,'Horror',1982,20,1),
	(' The Breathing Method',2,'Horror',1982,20,1),
	(' Pet Sematary',2,'Horror',1982,20,1),
	(' Christine',2,'Horror',1983,20,1),
	(' The Talisman',2,'Horror',1984,8.99,1),
	(' Cycle of the Werewolf',2,'Horror',1985,8.99,1),
	(' Thinner',2,'Horror',1984,5.99,1),
	(' Skeleton Crew',2,'Horror',1985,5.99,1),
	(' The Bachman Books',2,'Horror',1985,5.99,1),
	(' It',2,'Horror',1986,8.99,1),
	(' The Eyes of the Dragon',2,'Horror',1987,8.99,1),
	(' Misery',2,'Horror',1987,5.99,1),
	(' The Tommyknockers',2,'Horror',1987,5.99,1),
	(' Nightmares in The Sky',2,'Horror',1987,5.99,1),
	(' The Dark Half',2,'Horror',1989,8.99,1),
	(' The Stand: The Complete & Uncut Edition',2,'Horror',1990,8.99,1),
	(' Four Past Midnight',2,'Horror',1990,5.99,1),
	(' The Sun Dog',2,'Horror',1990,5.99,1),
	(' The Library Policeman',2,'Horror',1990,5.99,6),
	(' The Langoliers',2,'Horror',1990,5.99,6),
	(' Needful Things',2,'Horror',1991,5.99,6),
	(' Gerald’s Game',2,'Horror',1992,7.99,6),
	(' Dolores Claiborne',2,'Horror',1992,10,6),
	(' Nightmares & Dreamscapes',2,'Horror',1993,20,6),
	(' Insomnia',2,'Horror',1994,20,6),
	(' Blind Willie',2,'Horror',1994,20,6),
	(' Rose Madder',2,'Horror',1995,20,6),
	(' The Green Mile',2,'Horror',1996,5.99,6),
	(' Desperation',2,'Horror',1996,5.99,6),
	(' The Regulators',2,'Horror',1996,7.99,6),
	(' Bag of Bones',2,'Horror',1998,10,6),
	(' The Girl Who Loved Tom Gordon',2,'Horror',1999,8.99,6),
	(' Hearts in Atlantis',2,'Horror',1999,8.99,6),
	(' Why We’re in Vietnam',2,'Horror',1999,5.99,6),
	(' Low Men in Yellow Coats',2,'Horror',1999,5.99,6),
	(' Hearts in Atlantis',2,'Horror',1999,5.99,6),
	(' Stephen King’s N',2,'Horror',1999,5.99,6),
	(' Secret Windows: Essays and Fiction on the Craft of Writing',2,'Horror',1999,7.99,6),
	(' Elevation',2,'Horror',1999,10,6),
	(' On Writing: A Memoir of the Craft',2,'Horror',1999,5.99,6),
	(' Gwendy’s Button Box',2,'Horror',1999,5.99,1),
	(' Dreamcatcher',2,'Horror',2001,7.99,1),
	(' Black House',2,'Horror',2001,5.99,1),
	(' Everything’s Eventual',2,'Horror',2001,5.99,1),
	(' From a Buick 8',2,'Horror',2001,7.99,1),
	(' Faithful',2,'Horror',2004,10,1),
	(' The Colorado Kid',2,'Horror',2005,8.99,1),
	(' ‘Salem’s Lot Illustrated Edition',2,'Horror',2005,8.99,1),
	(' The Secretary of Dreams: Volume One',2,'Horror',2005,5.99,1),
	(' Cell',2,'Horror',2006,5.99,1),
	(' Lisey’s Story',2,'Horror',2006,5.99,1),
	(' Blaze',2,'Horror',2007,5.99,1),
	(' Duma Key',2,'Horror',2008,7.99,1),
	(' Just After Sunset',2,'Horror',2008,10,1),
	(' Stephen King Goes to the Movies',2,'Horror',2009,5.99,1),
	(' Under the Dome',2,'Horror',2009,5.99,1),
	(' The Secretary of Dreams: Volume 2',2,'Horror',2010,7.99,1),
	(' Full Dark',2,'Horror',2010,5.99,1),
	(' 11/22/63',2,'Horror',2011,5.99,1),
	(' GUNS',2,'Horror',2013,7.99,1),
	(' Joyland',2,'Horror',2013,10,1),
	(' Doctor Sleep',2,'Horror',2013,8.99,1),
	(' Mr',2,'Horror',2014,8.99,1),
	(' Revival',2,'Horror',2014,5.99,1),
	(' Finders Keepers',2,'Horror',2015,5.99,1),
	(' Joyland Illustrated Edition',2,'Horror',2015,5.99,1),
	(' The Bazaar of Bad Dreams',2,'Horror',2015,5.99,1),
	(' Blockade Billy',2,'Horror',2015,7.99,1),
	(' UR',2,'Horror',2015,10,1),
	(' End of Watch',2,'Horror',2016,5.99,1),
	(' Charlie the Choo-Choo',2,'Horror',2016,5.99,1),
	(' Sleeping Beauties',2,'Horror',2017,7.99,1),
	(' The Outsider',2,'Horror',2018,5.99,1),
	(' The Institute',2,'Horror',2019,5.99,1),
	(' If It Bleeds',2,'Horror',2020,7.99,1),
	('Sense and Sensibility ',3,'Literature',1811,4.99,4),
	('Pride and Prejudice ',3,'Literature',1813,4.99,4),
	('Mansfield Park ',3,'Literature',1814,4.99,4),
	('Emma ',3,'Literature',1815,4.99,4),
	('Northanger Abbey ',3,'Literature',1818,4.99,4),
	('Persuasion ',3,'Literature',1818,4.99,4),
	('Lady Susan ',3,'Literature',1871,4.99,4),
	('Frankenstein; Or, The Modern Prometheus',9,'Horror',1831,10.99,4),
	('Valperga: Or, the Life and Adventures of Castruccio, Prince of Lucca',9,'Horror',1823,8.99,4),
	('The Last Man',9,'Horror',1826,7.99,4),
	('The Fortunes of Perkin Warbeck, A Romance',9,'Horror',1830,3.99,4),
	('Lodore',9,'Horror',1835,3.99,1),
	('Falkner. A Novel',9,'Horror',1837,3.99,1),
	('Mathilda',9,'Horror',1959,3.99,1),
	('In the City by the Sea ',4,'Literature',1998,10.99,6),
	('Salt and Saffron ',4,'Literature',2000,10.99,6),
	('Kartography ',4,'Literature',2002,10.99,6),
	('Broken Verses ',4,'Literature',2005,10.99,6),
	('Offence: The Muslim Case ',4,'Literature',2009,10.99,6),
	('Burnt Shadows ',4,'Literature',2009,10.99,6),
	('A God in Every Stone ',4,'Literature',2014,10.99,6),
	('Home Fire ',4,'Literature',2017,8.99,6),
	('Best of Friends ',4,'Literature',2022,7.99,6),
	(' The Bluest Eye',5,'Literature',1970,6.99,3),
	(' Sula',5,'Literature',1973,5.89,3),
	(' Song of Solomon',5,'Literature',1977,4.79,3),
	(' Tar Baby',5,'Literature',1981,10.99,3),
	(' Beloved',5,'Literature',1987,8.99,3),
	(' Jazz',5,'Literature',1992,7.99,6),
	(' Paradise',5,'Literature',1997,3.99,6),
	(' Love',5,'Literature',2003,10.99,1),
	(' A Mercy',5,'Literature',2008,10.99,1),
	(' Home',5,'Literature',2012,10.99,1),
	(' God Help the Child',5,'Literature',2015,10.99,1),
	('Wuthering Heights',6,'Literature',1847,5.99,4),
	('The Edible Woman ',7,'Sci-Fi',1969,8.4,1),
	('Surfacing ',7,'Sci-Fi',1972,8.42,1),
	('Lady Oracle ',7,'Sci-Fi',1976,8.45,1),
	('Life Before Man ',7,'Sci-Fi',1979,8.47,1),
	('Bodily Harm ',7,'Sci-Fi',1981,8.49,1),
	('The Handmaid’s Tale ',7,'Sci-Fi',1985,8.52,1),
	('Cat’s Eye ',7,'Sci-Fi',1988,8.54,1),
	('The Robber Bride ',7,'Sci-Fi',1993,8.57,1),
	('Alias Grace ',7,'Sci-Fi',1996,8.59,1),
	('The Blind Assassin ',7,'Sci-Fi',2000,8.62,3),
	('Oryx and Crake: A Novel ',7,'Sci-Fi',2003,8.64,3),
	('The Penelopiad: The Myth of Penelope and Odysseus ',7,'Sci-Fi',2005,8.67,3),
	('The Year of the Flood ',7,'Sci-Fi',2009,8.69,3),
	('MaddAddam ',7,'Sci-Fi',2013,8.71,3),
	('Scribbler Moon ',7,'Sci-Fi',2014,8.74,3),
	('The Heart Goes Last ',7,'Sci-Fi',2015,8.76,3),
	('Hag-Seed ',7,'Sci-Fi',2016,8.79,4),
	('The Testaments ',7,'Sci-Fi',2019,8.81,4),
	('The Big U ',8,'Sci-Fi',1984,4.99,2),
	('Zodiac ',8,'Sci-Fi',1988,4.99,2),
	('Snow Crash ',8,'Sci-Fi',1992,4.99,2),
	('Interface ',8,'Sci-Fi',1994,4.99,2),
	('The Diamond Age: or A Young Lady''s Illustrated Primer ',8,'Sci-Fi',1995,4.99,2),
	('The Cobweb ',8,'Sci-Fi',1996,4.99,2),
	('Cryptonomicon ',8,'Sci-Fi',1999,10.99,4),
	('Quicksilver ',8,'Sci-Fi',2003,8.99,4),
	('The Confusion ',8,'Sci-Fi',2004,7.99,4),
	('The System of the World ',8,'Sci-Fi',2004,3.99,4),
	('Anathem ',8,'Sci-Fi',2008,3.99,6),
	('The Mongoliad ',8,'Sci-Fi',2012,3.99,6),
	('Reamde ',8,'Sci-Fi',2011,3.99,6),
	('Seveneves ',8,'Sci-Fi',2015,10.99,6),
	('The Rise and Fall of D.O.D.O. ',8,'Sci-Fi',2017,10.99,6),
	('New Found Land: The Long Haul ',8,'Sci-Fi',2021,10.99,6),
	('Termination Shock ',8,'Sci-Fi',2021,10.99,6)
    ;

INSERT INTO STORE (LOCATION)
VALUES 
('Soho'), ('Leeds'), ('Birmingham'), ('Chesire'), ('Manchester'), ('Oxford')
;

INSERT INTO STOCK (BOOK_ID, STORE_ID,QUANTITY)
VALUES 
	(2,1,5),
	(3,1,1),
	(4,1,7),
	(5,1,2),
	(7,1,6),
	(8,1,4),
	(9,1,1),
	(10,1,5),
	(12,1,0),
	(14,1,7),
	(15,1,5),
	(16,1,6),
	(17,1,1),
	(18,1,7),
	(20,1,7),
	(21,1,9),
	(22,1,9),
	(24,1,8),
	(28,1,4),
	(29,1,2),
	(31,1,8),
	(32,1,6),
	(33,1,4),
	(35,1,5),
	(36,1,9),
	(37,1,1),
	(38,1,3),
	(39,1,4),
	(40,1,1),
	(42,1,1),
	(43,1,3),
	(44,1,8),
	(45,1,2),
	(47,1,8),
	(48,1,2),
	(49,1,9),
	(61,1,0),
	(62,1,8),
	(65,1,3),
	(66,1,8),
	(67,1,3),
	(68,1,1),
	(70,1,6),
	(71,1,7),
	(72,1,9),
	(74,1,0),
	(75,1,0),
	(76,1,0),
	(78,1,2),
	(80,1,1),
	(82,1,2),
	(85,1,9),
	(87,1,1),
	(88,1,9),
	(89,1,8),
	(90,1,3),
	(91,1,4),
	(92,1,5),
	(93,1,3),
	(94,1,9),
	(95,1,8),
	(96,1,5),
	(97,1,0),
	(98,1,6),
	(99,1,4),
	(100,1,9),
	(101,1,9),
	(102,1,2),
	(103,1,8),
	(104,1,7),
	(105,1,4),
	(106,1,1),
	(107,1,7),
	(108,1,0),
	(109,1,2),
	(110,1,4),
	(111,1,8),
	(112,1,9),
	(113,1,9),
	(114,1,9),
	(115,1,1),
	(116,1,2),
	(117,1,6),
	(118,1,1),
	(119,1,7),
	(120,1,3),
	(121,1,8),
	(122,1,8),
	(123,1,5),
	(124,1,7),
	(125,1,4),
	(126,1,5),
	(127,1,3),
	(128,1,5),
	(129,1,5),
	(130,1,9),
	(131,1,5),
	(132,1,8),
	(133,1,9),
	(134,1,9),
	(135,1,4),
	(136,1,6),
	(137,1,0),
	(138,1,3),
	(139,1,2),
	(140,1,2),
	(141,1,9),
	(142,1,5),
	(143,1,9),
	(144,1,9),
	(145,1,1),
	(146,1,0),
	(147,1,6),
	(148,1,0),
	(149,1,9),
	(150,1,3),
	(151,1,8),
	(152,1,2),
	(153,1,1),
	(154,1,9),
	(155,1,0),
	(156,1,5),
	(157,1,1),
	(158,1,3),
	(159,1,3),
	(160,1,0),
	(161,1,8),
	(162,1,5),
	(163,1,2),
	(164,1,6),
	(165,1,8),
	(1,2,3),
	(2,2,7),
	(19,2,8),
	(20,2,5),
	(21,2,3),
	(22,2,8),
	(23,2,0),
	(24,2,9),
	(25,2,3),
	(26,2,6),
	(27,2,9),
	(28,2,9),
	(29,2,9),
	(30,2,6),
	(31,2,9),
	(32,2,1),
	(49,2,2),
	(50,2,7),
	(51,2,3),
	(52,2,0),
	(53,2,0),
	(54,2,1),
	(55,2,2),
	(56,2,8),
	(57,2,3),
	(58,2,8),
	(59,2,1),
	(60,2,0),
	(61,2,7),
	(62,2,8),
	(63,2,1),
	(64,2,3),
	(65,2,0),
	(66,2,2),
	(67,2,0),
	(68,2,6),
	(70,2,7),
	(73,2,8),
	(74,2,0),
	(75,2,4),
	(77,2,7),
	(78,2,0),
	(79,2,0),
	(80,2,0),
	(81,2,8),
	(82,2,0),
	(83,2,3),
	(84,2,8),
	(85,2,7),
	(86,2,7),
	(88,2,0),
	(89,2,2),
	(91,2,1),
	(92,2,8),
	(93,2,2),
	(95,2,0),
	(96,2,0),
	(97,2,8),
	(98,2,2),
	(99,2,9),
	(101,2,1),
	(102,2,2),
	(103,2,9),
	(109,2,5),
	(111,2,6),
	(112,2,6),
	(113,2,6),
	(114,2,8),
	(115,2,7),
	(116,2,1),
	(117,2,7),
	(118,2,7),
	(119,2,6),
	(120,2,1),
	(121,2,7),
	(122,2,1),
	(123,2,4),
	(124,2,2),
	(125,2,1),
	(127,2,8),
	(129,2,7),
	(130,2,3),
	(131,2,2),
	(132,2,9),
	(133,2,6),
	(134,2,6),
	(135,2,2),
	(136,2,8),
	(137,2,1),
	(139,2,7),
	(141,2,0),
	(142,2,6),
	(143,2,7),
	(144,2,0),
	(145,2,7),
	(146,2,6),
	(147,2,1),
	(148,2,1),
	(149,2,5),
	(150,2,8),
	(151,2,2),
	(152,2,4),
	(154,2,2),
	(155,2,0),
	(156,2,5),
	(157,2,8),
	(158,2,3),
	(159,2,6),
	(160,2,3),
	(161,2,8),
	(162,2,2),
	(163,2,0),
	(164,2,6),
	(1,3,7),
	(2,3,9),
	(3,3,3),
	(4,3,3),
	(5,3,2),
	(6,3,3),
	(8,3,2),
	(9,3,6),
	(10,3,4),
	(11,3,9),
	(12,3,1),
	(13,3,8),
	(14,3,3),
	(15,3,0),
	(16,3,4),
	(17,3,8),
	(18,3,5),
	(19,3,0),
	(20,3,0),
	(21,3,7),
	(22,3,2),
	(23,3,8),
	(24,3,5),
	(25,3,8),
	(26,3,9),
	(27,3,1),
	(28,3,8),
	(29,3,2),
	(30,3,6),
	(31,3,1),
	(32,3,2),
	(33,3,4),
	(34,3,6),
	(35,3,4),
	(36,3,5),
	(37,3,5),
	(38,3,5),
	(39,3,8),
	(40,3,5),
	(41,3,9),
	(42,3,8),
	(43,3,6),
	(44,3,2),
	(45,3,2),
	(62,3,3),
	(63,3,1),
	(64,3,1),
	(65,3,3),
	(66,3,2),
	(67,3,7),
	(68,3,3),
	(69,3,6),
	(70,3,0),
	(71,3,0),
	(72,3,3),
	(73,3,7),
	(74,3,3),
	(75,3,7),
	(76,3,3),
	(77,3,4),
	(78,3,5),
	(79,3,0),
	(80,3,2),
	(81,3,3),
	(82,3,6),
	(83,3,4),
	(84,3,3),
	(85,3,7),
	(86,3,1),
	(87,3,3),
	(88,3,1),
	(89,3,4),
	(90,3,5),
	(91,3,0),
	(92,3,4),
	(93,3,2),
	(94,3,3),
	(95,3,4),
	(96,3,9),
	(97,3,3),
	(117,3,9),
	(118,3,2),
	(119,3,8),
	(120,3,4),
	(121,3,6),
	(122,3,7),
	(123,3,7),
	(124,3,5),
	(125,3,7),
	(126,3,0),
	(127,3,4),
	(128,3,5),
	(129,3,8),
	(130,3,1),
	(131,3,1),
	(132,3,2),
	(133,3,8),
	(134,3,9),
	(135,3,2),
	(136,3,2),
	(137,3,6),
	(138,3,4),
	(139,3,7),
	(140,3,3),
	(141,3,3),
	(142,3,8),
	(143,3,7),
	(144,3,0),
	(145,3,2),
	(146,3,8),
	(147,3,0),
	(148,3,9),
	(149,3,8),
	(150,3,4),
	(151,3,0),
	(152,3,8),
	(153,3,0),
	(154,3,0),
	(155,3,2),
	(156,3,5),
	(157,3,2),
	(158,3,8),
	(159,3,7),
	(160,3,8),
	(161,3,7),
	(162,3,0),
	(163,3,7),
	(164,3,3),
	(165,3,4),
	(1,4,7),
	(2,4,3),
	(3,4,7),
	(25,4,3),
	(26,4,2),
	(27,4,4),
	(28,4,5),
	(29,4,4),
	(30,4,6),
	(31,4,3),
	(32,4,0),
	(33,4,9),
	(34,4,8),
	(35,4,0),
	(36,4,2),
	(37,4,9),
	(38,4,5),
	(39,4,0),
	(40,4,0),
	(41,4,0),
	(42,4,8),
	(43,4,7),
	(44,4,0),
	(45,4,4),
	(46,4,3),
	(47,4,1),
	(48,4,2),
	(49,4,6),
	(50,4,6),
	(51,4,7),
	(52,4,6),
	(53,4,9),
	(65,4,7),
	(66,4,2),
	(67,4,9),
	(68,4,0),
	(69,4,7),
	(70,4,1),
	(71,4,6),
	(72,4,5),
	(73,4,5),
	(74,4,9),
	(75,4,0),
	(76,4,3),
	(77,4,3),
	(78,4,2),
	(79,4,6),
	(80,4,5),
	(81,4,2),
	(82,4,7),
	(83,4,2),
	(84,4,3),
	(85,4,0),
	(86,4,7),
	(87,4,2),
	(88,4,7),
	(89,4,6),
	(90,4,1),
	(91,4,6),
	(92,4,7),
	(93,4,6),
	(94,4,2),
	(95,4,9),
	(96,4,4),
	(97,4,0),
	(98,4,7),
	(99,4,0),
	(100,4,1),
	(101,4,3),
	(102,4,8),
	(103,4,3),
	(104,4,4),
	(105,4,7),
	(106,4,3),
	(107,4,8),
	(108,4,0),
	(109,4,6),
	(110,4,8),
	(111,4,0),
	(112,4,3),
	(113,4,7),
	(114,4,5),
	(115,4,0),
	(116,4,0),
	(117,4,6),
	(118,4,2),
	(119,4,5),
	(120,4,7),
	(121,4,7),
	(122,4,7),
	(123,4,0),
	(124,4,5),
	(125,4,2),
	(126,4,7),
	(127,4,8),
	(128,4,5),
	(129,4,7),
	(130,4,1),
	(131,4,8),
	(132,4,5),
	(133,4,7),
	(134,4,7),
	(135,4,4),
	(136,4,3),
	(137,4,4),
	(138,4,5),
	(139,4,9),
	(140,4,1),
	(141,4,3),
	(142,4,1),
	(143,4,5),
	(144,4,9),
	(145,4,8),
	(146,4,1),
	(147,4,9),
	(149,4,3),
	(150,4,4),
	(151,4,2),
	(152,4,2),
	(153,4,8),
	(154,4,4),
	(155,4,2),
	(156,4,4),
	(157,4,1),
	(158,4,1),
	(159,4,0),
	(161,4,8),
	(162,4,2),
	(163,4,2),
	(164,4,0),
	(165,4,5),
	(16,5,7),
	(17,5,8),
	(18,5,8),
	(19,5,7),
	(20,5,0),
	(21,5,2),
	(22,5,8),
	(23,5,0),
	(24,5,7),
	(25,5,8),
	(150,5,6),
	(151,5,8),
	(152,5,3),
	(153,5,6),
	(154,5,6),
	(155,5,6),
	(156,5,1),
	(157,5,7),
	(158,5,0),
	(159,5,8),
	(160,5,8),
	(161,5,0),
	(162,5,6),
	(163,5,2),
	(164,5,9),
	(165,5,0),
	(1,6,3),
	(2,6,2),
	(3,6,1),
	(4,6,9),
	(5,6,5),
	(6,6,9),
	(7,6,5),
	(8,6,3),
	(9,6,0),
	(18,6,2),
	(19,6,7),
	(20,6,1),
	(21,6,6),
	(22,6,8),
	(23,6,1),
	(24,6,7),
	(25,6,4),
	(26,6,1),
	(27,6,6),
	(28,6,4),
	(29,6,3),
	(30,6,3),
	(31,6,8),
	(32,6,4),
	(33,6,4),
	(34,6,8),
	(35,6,5),
	(36,6,2),
	(37,6,6),
	(38,6,5),
	(39,6,4),
	(40,6,8),
	(41,6,7),
	(42,6,5),
	(43,6,9),
	(44,6,3),
	(45,6,4),
	(46,6,7),
	(47,6,6),
	(48,6,5),
	(49,6,2),
	(50,6,0),
	(51,6,6),
	(52,6,7),
	(53,6,3),
	(54,6,0),
	(55,6,9),
	(56,6,9),
	(57,6,4),
	(58,6,5),
	(73,6,7),
	(74,6,9),
	(75,6,7),
	(76,6,5),
	(77,6,9),
	(78,6,9),
	(79,6,2),
	(80,6,9),
	(81,6,9),
	(82,6,3),
	(83,6,4),
	(84,6,5),
	(85,6,7),
	(86,6,4),
	(87,6,0),
	(88,6,3),
	(89,6,4),
	(104,6,8),
	(105,6,1),
	(106,6,3),
	(107,6,9),
	(108,6,4),
	(109,6,1),
	(110,6,9),
	(111,6,4),
	(112,6,9),
	(113,6,6),
	(114,6,7),
	(115,6,0),
	(116,6,2),
	(117,6,0),
	(118,6,0),
	(119,6,7),
	(120,6,1),
	(121,6,3),
	(135,6,1),
	(136,6,0),
	(137,6,7),
	(138,6,3),
	(139,6,7),
	(140,6,6),
	(141,6,7),
	(142,6,1),
	(143,6,2),
	(144,6,8),
	(145,6,7),
	(146,6,9),
	(147,6,2),
	(148,6,3),
	(149,6,4),
	(150,6,4),
	(151,6,9),
	(152,6,7);

    
    Select * from author;
	Select * from books;
	Select * from publisher;
	Select * from stock;
	Select * from store;

-- CORE REQURIEMENTS
-- PRIMARY AND FOREIGN KEY, MINIMUM 5 TABLES
	-- DONE

-- CREATE A VIEW - -- Using any type of the joins create a view that combines multiple tables in a logical way ---- VIEW WITH 3-4 TABLES
	
CREATE VIEW vw_stock
AS
SELECT 
books.title, 
store.location,
books.genre, 
books.published_year, 
books.rrp,
publisher.publisher_name,
publisher.publisher_city,
author.author_name,
author.author_gender,
stock.quantity
FROM stock
INNER JOIN store ON stock.store_ID = store.store_ID
INNER JOIN books ON stock.book_id = books.book_id
INNER JOIN publisher ON books.publisher_id = publisher.publisher_ID
INNER JOIN author ON books.author_ID = author.author_ID
order by author_name, title
;

-- test view
SELECT * FROM vw_stock;

---------------------------------------------------------------------------------------------------
-- STORED FUNCTION -----------------------------------------------------------------------------------

DELIMITER //
CREATE FUNCTION check_stock(quantity INT)
RETURNS BOOLEAN DETERMINISTIC
BEGIN
    DECLARE Stock_level INT;
    IF quantity > 0 THEN SET Stock_level = true;
    ELSE SET Stock_level = false;
    END IF;
    RETURN Stock_level;
END//
DELIMITER ;

-- test function in a table
select title, check_stock(quantity) from vw_stock;

-- test function -- find which stores sell the handmaids tale and then which are in stock
SELECT location, title, quantity
FROM vw_stock
where title LIKE '%handmaid%' and check_stock(quantity) = true;
;

-- select books IN STOCK written by women
Select DISTINCT title, author_name FROM vw_stock
Where author_gender = 'F' and check_stock(quantity)=true;





-- -----------------------------------------------------------------------------------
-- EXAMPLE QUERY WITH SUBQUERY -------------------------------------------------------

-- cheapest and most expensive books
SELECT DISTINCT title, RRP, author_name, author_gender from vw_stock
WHERE RRP = (SELECT MAX(RRP) FROM vw_stock);

SELECT DISTINCT title, RRP, author_name, author_gender from vw_stock
WHERE RRP = (SELECT MIN(RRP) FROM vw_stock);

-- most and least out of stock items
SELECT location, count(quantity) AS out_of_stock_items FROM vw_stock
WHERE quantity = 0 
GROUP BY location;

Select location, out_of_stock_items FROM
(SELECT location, count(quantity) AS out_of_stock_items, MAX(count(quantity)) OVER() AS MaxOOS FROM vw_stock
WHERE quantity = 0 
GROUP BY location) AS OOS
WHERE out_of_stock_items = MaxOOS;

Select location, out_of_stock_items FROM
(SELECT location, count(quantity) AS out_of_stock_items, MIN(count(quantity)) OVER() AS MinOOS FROM vw_stock
where quantity = 0 
group by location) AS OOS
WHERE out_of_stock_items = MinOOS;

/* SELECT location, out_of_stock_items FROM 
(SELECT location, count(quantity) AS out_of_stock_items FROM vw_stock where quantity = 0 group by location) AS Out_stock
group by location
having out_of_stock_items = (SELECT MAX(out_of_stock_items) FROM 
(SELECT location, count(quantity) AS out_of_stock_items FROM vw_stock where quantity = 0 group by location) AS oos); */







-- ----------------------------------------------------------------------------------------------
-- STORED PROCEDURE -------------------------------------------------------------------------
use sequel_books;

DELIMITER //
CREATE PROCEDURE StockWarning(storecheck VARCHAR(20))
BEGIN
	If storecheck = 'all' THEN SELECT location, title, author_name, quantity, 'STOCK WARNING' FROM vw_stock WHERE quantity = 0;
    ELSE 
    SELECT location, title, author_name, quantity, 'STOCK WARNING' FROM vw_stock WHERE quantity = 0 AND  location = storecheck;
    END IF;
END//
DELIMITER ;

-- Call Stored Procedure
CALL stockWarning('ALL');
CALL stockWarning('soho');
CALL stockWarning('Birmingham');
CALL stockWarning('Leeds');
CALL stockWarning('Chesire');
CALL stockWarning('Oxford');
CALL stockWarning('Manchester');


-- ------------------------------------------------------------------------------------------------
-- QUERY WITH GROUP BY ---------------------------------------------------------------------------


-- GROUP BY EXAMPLE 1
-- All books in the catalogue and how many stores they are sold in
SELECT 
title, 
author_name,
COUNT(location) AS Stores_Held,
sum(quantity) AS TotalCopies
FROM vw_stock
GROUP BY title, author_name, published_year, rrp, author_gender, publisher_name, publisher_city
Order by Author_name;

-- GROUP BY EXAMPLE 2
-- Male and female authors by location
SELECT 
COUNT(author_gender), author_gender, location
from vw_stock
Group by author_gender, location;

-- GROUP BY EXAMPLE 3
-- Female Authors By location
SELECT COUNT(author_gender) AS FemaleAuthors, location FROM VW_STOCK 
where author_gender='f'
group by location
;

-- GROUP BY EXAMPLE 4
-- WEIRD! The manchester store sells none :0
Select count(title) AS Writers, author_gender, location from vw_stock where location='manchester'
Group by author_gender, location;

-- -------------------------------------------------------------------------------------------------
