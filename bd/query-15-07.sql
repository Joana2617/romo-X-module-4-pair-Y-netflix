USE netflix;

INSERT INTO movies (idMovie, title, genre, image, category, year) VALUES
(1, "Pulp Fiction", "Crimen", "https://pics.filmaffinity.com/pulp_fiction-210382116-large.jpg", "Top 10", 1994),
(2, "La vita è bella", "Comedia", "https://pics.filmaffinity.com/la_vita_e_bella-646167341-mmed.jpg", "Top 10", 1996),
(3, "Forrest Gump", "Comedia", "https://pics.filmaffinity.com/forrest_gump-212765827-mmed.jpg", "Top 10", 1994);

INSERT INTO users (idUser, user, password, name, email, planDetails) VALUES
(1, "laura_dev", "laura", "Laura", "laura@gmail.com", "Standard"),
(2, "maria_dev", "maria", "Maria", "maria@gmail.com", "Standard"),
(3, "ester_dev", "ester", "Ester", "ester@gmail.com", "Standard");

INSERT INTO actors (idActor, name, lastname, country, birthday) VALUES
(1, "Tom", "Hanks", "Estaods Unidos", "1956-07-09"),
(2, "Roberto", "Benigni", "Italia", "1952-10-27"),
(3, "John", "Travolta", "Estaods Unidos", "1954-02-18");

SELECT * FROM movies;

SELECT * FROM movies WHERE year >= 1990;

SELECT * FROM movies WHERE year >= 1994;

SELECT * FROM movies WHERE year >= 1996;

SELECT * FROM movies WHERE year > 1994;

SELECT * FROM movies WHERE category = "Top 10";

UPDATE movies SET year = 1997 WHERE idMovie = 2;

SELECT * FROM movies WHERE year >= 1997;

SELECT * from actors;

SELECT * from actors WHERE YEAR(birthday) BETWEEN 1950 and 1960;

SELECT * from users;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM users WHERE name LIKE 'M%';

SELECT * from actors;

SELECT * from users


