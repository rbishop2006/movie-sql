-- 1.
SELECT *
FROM Movies.movies;

-- 2.
SELECT title, id
FROM Movies.movies LIMIT
10;

--3.
SELECT title
FROM Movies.movies
WHERE id = 485;

--4.
SELECT id
FROM Movies.movies
WHERE title = 'Made in America (1993)';

--5.
SELECT title
FROM Movies.movies
Order By (title)
LIMIT 10;

--6.
SELECT title
FROM Movies.movies 
WHERE title
LIKE '%2002%';

--7.
SELECT title
FROM Movies.movies
WHERE title
LIKE 'Godfather%';

--8.
SELECT title, genres
FROM Movies.movies
WHERE genres 
LIKE  '%comedy%';

--9.
SELECT title
FROM Movies.movies
WHERE genres
LIKE '%comedy%'
  AND title
LIKE '%(2000)%'

--10.
SELECT title
FROM Movies.movies
WHERE genres
LIKE '%comedy%'
  AND title
LIKE '%death%';

--11.
SELECT title
FROM Movies.movies
WHERE title LIKE '%super%'
  AND title LIKE '%(2001)%' OR '%(2002)%';

--12.
CREATE TABLE `Movies`.`actors`
(
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `character_name` VARCHAR
(45) NULL,
  `movie_key` INT UNSIGNED NULL,
  `date_of_birth` VARCHAR
(45) NULL,
  `actor_name` VARCHAR
(45) NULL,
  PRIMARY KEY
(`id`));

--13.
INSERT INTO actors
  (character_name, movie_key, date_of_birth, actor_name)
VALUES
  ('Vincent Hanna', '6', 'April 25, 1940', 'Al Pacino'),
  ('Neil McCauley', '6', 'August 17, 1943', 'Robert De Niro'),
  ('Chris Shiherlis', '6', 'December 31, 1959', 'Val Kilmer'),
  ('Nate', '6', 'December 29, 1938', 'John Voight'),
  ('Michael Cheritto', '6', 'November 29, 1961', 'Tom Sizemore'),
  ('Justine', '6', 'August 10, 1952', 'Diane Venora'),
  ('Eady', '6', 'June 22, 1964', 'Amy Brennerman'),
  ('Charlene Shiherlis', '6', 'April 19, 1968', 'Ashley Judd'),
  ('Drucker', '6', 'March 4, 1957', 'Mykelti Williamson'),
  ('Casals', '6', 'December 17, 1947', 'Wes Studi'),
  ('Sam Rothstein', '16', 'August 17, 1943', 'Robert De Niro'),
  ('Ginger McKenna', '16', 'March 10, 1958', 'Sharon Stone'),
  ('Nicky Santor', '16', 'February 9, 1943', 'Joe Pesci'),
  ('Lester Diamond', '16', 'April 18, 1947', 'James Woods'),
  ('Billy Sherbert', '16', 'May 8, 1926', 'Don Rickles'),
  ('Andy Stone', '16', 'May 8, 1926', 'Alan King'),
  ('Phillip Green', '16', 'October 30, 1957', 'Kevin Pollak'),
  ('Pat Webb', '16', 'August 19, 1927', 'L.Q. Jones'),
  ('Frank Marino', '16', 'April 15, 1937', 'Frank Vincent'),
  ('Don Ward', '16', 'February 19, 1944', 'John Bloom'),
  ('McManus', '50', 'May 12, 1966', 'Stephen Baldwin'),
  ('Keaton', '50', 'May 12, 1950', 'Gabriel Byrne'),
  ('Fenster', '50', 'February 19, 1967', 'Benicio Del Toro'),
  ('Hockney', '50', 'October 30, 1957', 'Kevin Pollak'),
  ('Verbal', '50', 'July 26, 1959', 'Kevin Spacey'),
  ('Dave Kujan', '50', 'May 15, 1952', 'Chazz Palminteri'),
  ('Kobayashi', '50', 'February 7, 1946', 'Pete Postlethwaite'),
  ('Edie Finnerman', '50', 'January 5, 1962', 'Suzy Amis'),
  ('Jack Baer', '50', 'April 26, 1958', 'Giancarlo Esposito'),
  ('Jeff Rabin', '50', 'July 24, 1940', 'Dan Hedaya')

--14.

ALTER TABLE `Movies`.`movies`
ADD COLUMN `MPAA` VARCHAR
(45) NULL AFTER `genres`;

UPDATE movies
SET MPAA='G'
WHERE id =1

UPDATE movies
SET MPAA='PG'
WHERE id =2

UPDATE movies
SET MPAA='G'
WHERE id =3

UPDATE movies
SET MPAA='R'
WHERE id =4

UPDATE movies
SET MPAA='PG'
WHERE id =5

--15.
SELECT movies.title, ratings.rating
FROM movies
  LEFT JOIN ratings ON movies.id = ratings.movie_id
WHERE movies.id = 858

--16.
SELECT movies.title, ratings.rating
FROM movies
  LEFT JOIN ratings ON movies.id = ratings.movie_id
WHERE movies.id = 858
ORDER BY timestamp ASC

--17.
SELECT movies.title, links.imdb_id
FROM Movies
  LEFT JOIN links ON movies.id = links.movie_id
WHERE genres
LIKE '%comedy%'
  AND title 
LIKE '%(2005)%'

--18??.
SELECT movies.title, ratings.rating
FROM Movies
  LEFT JOIN ratings ON movies.id = ratings.movie_id
WHERE ISNULL(ratings.rating)

--19.
SELECT movies.title, AVG(ratings.rating)
FROM movies
  LEFT JOIN ratings ON ratings.movie_id = movies.id
WHERE movie_id = 31
GROUP BY movies.title

--20.
SELECT movies.title, COUNT(ratings.rating)
FROM movies
  LEFT JOIN ratings ON ratings.movie_id = movies.id
WHERE movie_id = 31
GROUP BY movies.title

--21.
SELECT movies.genres, COUNT(movies.genres)
FROM Movies.movies
WHERE movies.genres = 'Action'
GROUP BY movies.genres

--22.
SELECT AVG(rating)
FROM movies.ratings
WHERE user_id = 3

--23.
SELECT MAX(ratings.user_id)
FROM ratings

--24.


--25.













