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

SELECT * from users;

CREATE TABLE user_favorites (
    idUser INT,
    idMovie INT,
    score TINYINT,  -- Puntuación del 1 al 10
    PRIMARY KEY (idUser, idMovie),
    FOREIGN KEY (idUser) REFERENCES users(idUser),
    FOREIGN KEY (idMovie) REFERENCES movies(idMovie)
);

INSERT INTO user_favorites (idUser, idMovie, score) VALUES
(1, 1, 9),
(1, 2, 8);

SELECT u.name AS user_name, m.title AS movie_title, uf.score
FROM user_favorites uf
JOIN users u ON uf.idUser = u.idUser
JOIN movies m ON uf.idMovie = m.idMovie;

CREATE TABLE movie_actors (
    idMovie INT,
    idActor INT,
    PRIMARY KEY (idMovie, idActor),
    FOREIGN KEY (idMovie) REFERENCES movies(idMovie),
    FOREIGN KEY (idActor) REFERENCES actors(idActor)
);

INSERT INTO movie_actors (idMovie, idActor) VALUES
(1, 3),

-- La vida es bella (idMovie 2) - Roberto Benigni (idActor 2)
(2, 2),

-- Forrest Gump (idMovie 3) - Tom Hanks (idActor 1)
(3, 1);

SELECT m.title AS movie_title, a.name AS actor_name, a.lastname AS actor_lastname
FROM movie_actors ma
JOIN movies m ON ma.idMovie = m.idMovie
JOIN actors a ON ma.idActor = a.idActor;



