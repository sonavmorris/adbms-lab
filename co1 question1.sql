create DATABASE movie;
USE movie;
CREATE TABLE movies (title varchar(20) NOT NULL PRIMARY KEY ,director varchar(20) NOT NULL,myear varchar(20) NOT NULL,rating float NOT NULL);
INSERT INTO movies (title, director, myear, rating) VALUES('Fargo', 'Coen', '1996', 8.2);
INSERT INTO movies (title, director, myear, rating) VALUES('Raising Arizona', 'Coen', '1987', 7.6);
INSERT INTO movies (title, director, myear, rating) VALUES('Spiderman', 'Raimi', '2002', 7.4);
INSERT INTO movies (title, director, myear, rating) VALUES('Wonder Boys', 'Hanson', '2000', 7.6);
SELECT * FROM movies;
CREATE TABLE actors(actor VARCHAR(20) NOT NULL PRIMARY KEY,ayear VARCHAR(20) NOT NULL);
INSERT INTO actors(actor,ayear)VALUES('Cage','1964');
INSERT INTO actors(actor,ayear)VALUES('Hanks','1956');
INSERT INTO actors(actor,ayear)VALUES('Maguire','1975');
INSERT INTO actors(actor,ayear)VALUES('McDormand','1957');
SELECT * FROM actors;
CREATE TABLE acts(actor VARCHAR(20) NOT NULL ,title VARCHAR(20) NOT NULL,FOREIGN KEY(actor) REFERENCES actors(actor),FOREIGN KEY(title) REFERENCES movies(title));
INSERT INTO acts(actor,title)VALUES('Maguire','Spiderman');
INSERT INTO acts(actor,title)VALUES('Maguire','Wonder Boys');
INSERT INTO acts(actor,title)VALUES('Cage','Raising Arizona');
INSERT INTO acts(actor,title)VALUES('McDormand','Fargo');
INSERT INTO acts(actor,title)VALUES('McDormand','Raising Arizona');
INSERT INTO acts(actor,title)VALUES('McDormand','Wonder Boys');
SELECT * FROM acts;
CREATE TABLE directors(director VARCHAR(20) NOT NULL PRIMARY KEY,dyear VARCHAR(20) NOT NULL);
INSERT INTO directors(director,dyear)VALUES('Coen','1954');
INSERT INTO directors(director,dyear)VALUES('Hanson','1945');
INSERT INTO directors(director,dyear)VALUES('Raimi','1959');
SELECT * FROM directors;
ALTER TABLE movies ADD CONSTRAINT director FOREIGN KEY(director) REFERENCES directors(director)ON DELETE CASCADE;
SELECT * FROM movies WHERE myear>'1997';
SELECT * FROM movies WHERE myear>'1997' and director='Hanson';
SELECT title,rating FROM movies;
SELECT DISTINCT director,actor FROM directors NATURAL JOIN movies NATURAL JOIN acts NATURAL JOIN actors;
USE movie;
SELECT title FROM acts WHERE actor="McDormand" AND title in (SELECT title FROM movies WHERE director="Coen");





















