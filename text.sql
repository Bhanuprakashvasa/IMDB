-----------------------------IMDB Design a DB for IMDB ---------------------------------------
-- 1. Movie should have multiple media(Video or Image)
-- 2. Movie can belongs to multiple Genre
-- 3. Movie can have multiple reviews and Review can belongs to a user
-- 4. Artist can have multiple skills 5. Artist can perform multiple role in a single film

---------------------------------------------------------------------------------------------
--------------------------------CREATING IMDB DATABASE-----------------------------------------

CREATE TABLE Movie(
    Movie_id INTEGER PRIMARY KEY,
    Movie_name TEXT,
    Movie_artist TEXT
);

INSERT INTO Movie
VALUES(1, "Pushpa", "Allu Arjun");

------------------------------------------------------------------------------------------------

CREATE TABLE Movie_details(
    Moviedetails_id INTEGER PRIMARY KEY,
    Movie_id INTEGER FOREIGN KEY,
    Media VARCHAR
);

INSERT INTO Movie_details
VALUES(1, 1, "C:\Pushpa poster\Pushpa 1.jpg"),
VALUES(2, 1, "C:\Pushpa poster\Pushpa 2.jpg"),
VALUES(3, 1, "C:\Pushpa poster\Pushpa 3.jpg"),
VALUES(4, 1, "C:\Pushpa poster\Pushpa 4.jpg"),
VALUES(5, 1, "C:\Pushpa poster\Pushpa 7.jpg"),
VALUES(6, 1, "C:\Pushpa poster\Pushpa 6.jpg"),
VALUES(7, 1, "C:\Pushpa poster\Pushpa 7.jpg");

-------------------------------------------------------------------------------------------------

CREATE TABLE Genre(
    Genre_id INTEGER PRIMARY KEY,
    Movie_id INTEGER FOREIGN KEY,
    Movie_genre TEXT
);
INSERT INTO Genre
VALUES(1, 1, "Sci-fi"),
VALUES(2, 1, "Action"),
VALUES(3, 1, "History"),
VALUES(4, 1, "Comedy"),
VALUES(5, 1, "Thriller"),
VALUES(6, 1, "Romance");

-----------------------------------------------------------------------------------------------
CREATE TABLE Artist(
    Artist_id INTEGER PRIMARY KEY,
    Movie_id INTEGER FOREIGN KEY,
    Skills TEXT,
    Name VARCHAR
);
INSERT INTO Artist
VALUES(1, 1, "Actor", "Allu Arjun"),
VALUES(2, 1, "Singer", "A young man"),
VALUES(3, 1, "Dancer", "Ganesh Acharya"),
VALUES(4, 1, "Director", "Sukumar"),
VALUES(5, 1, "Music director", "Devi Sri Prasad"),
VALUES(6, 1, "Producer", "Naveen Yerneni"),
VALUES(7, 1, "Lyricist", "Chandrabose"),
VALUES(8, 1, "Writer", "Sukumar");
INSERT INTO Artist
(Artist_id, Movie_id, Role)
VALUES(9, 1, "A Japanese"),
VALUES(10, 1, "An Afghan");

------------------------------------------------------------------------------------------------

CREATE TABLE Review(
    Rating_id INTEGER PRIMARY KEY,
    Review TEXT
);
INSERT INTO Review
VALUES(1,"Flop"),
VALUES(2,"Average"),
VALUES(3,"Hit"),
VALUES(4,"Blockbuster");

------------------------------------------------------------------------------------------------

CREATE TABLE User_details(
    Reviewer_id INTEGER PRIMARY KEY,
    Movie_id INTEGER FOREIGN KEY,
    User_name TEXT,
    User_email VARCHAR,
    Rating_id INTEGER FOREIGN KEY,
);
INSERT INTO User_details
VALUES(1, 1, "vbp", "vbp@gmail.com", 4),
VALUES(2, 1, "jayanth", "jayanth@gmail.com", 3),
VALUES(3, 1, "mahesh", "mahesh@gmail.com", 2),
VALUES(4, 1, "sai", "sai@gmail.com", 4),
VALUES(5, 1, "Akhil", "akhil@gmail.com", 3);