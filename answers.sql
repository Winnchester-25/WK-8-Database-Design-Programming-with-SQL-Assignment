CREATE DATABASE movie_db;
USE movie_db;

CREATE TABLE directors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);




CREATE TABLE movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year YEAR,
    director_id INT,
    rating DECIMAL(2,1),
    description TEXT,
    FOREIGN KEY (director_id) REFERENCES directors(id)
);

CREATE TABLE genres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE movie_genres (
    movie_id INT,
    genre_id INT,
    PRIMARY KEY (movie_id, genre_id),
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);


INSERT INTO directors (name) VALUES
('Christopher Nolan'),
('Greta Gerwig'),
('James Cameron');


INSERT INTO movies (title, release_year, director_id, rating, description)
VALUES
('Inception', 2010, 1, 8.8, 'A skilled thief leads a team into dreams to steal secrets.'),
('Barbie', 2023, 2, 7.4, 'Barbie embarks on a journey of self-discovery in the real world.'),
('Avatar', 2009, 3, 7.8, 'A paraplegic Marine joins an alien world and faces hard choices.');


INSERT INTO genres (name) VALUES
('Action'),
('Sci-Fi'),
('Drama'),
('Romance'),
('Adventure');

INSERT INTO movie_genres (movie_id, genre_id) VALUES
(1, 1), -- Inception - Action
(1, 2), -- Inception - Sci-Fi
(2, 3), -- Barbie - Drama
(2, 4), -- Barbie - Romance
(3, 2), -- Avatar - Sci-Fi
(3, 5); -- Avatar - Adventure

