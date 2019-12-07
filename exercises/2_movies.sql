----excercise 2 - queries on multiple relations
--db movies

--t1.1
SELECT moviestar.name
FROM moviestar join starsin ON moviestar.name = starsin.starname
WHERE moviestar.gender = 'M' and movietitle = 'The Usual Suspects';

--t1.2
SELECT STARSIN.STARNAME
FROM STARSIN JOIN MOVIE ON STARSIN.MOVIETITLE = MOVIE.TITLE JOIN STUDIO ON MOVIE.STUDIONAME = STUDIO.NAME
WHERE MOVIE.YEAR = 1995 and movie.STUDIONAME = 'MGM';

--t1.3
SELECT DISTINCT MOVIEEXEC.NAME
FROM MOVIEEXEC JOIN MOVIE ON MOVIEEXEC.CERT# = MOVIE.PRODUCERC#
WHERE movie.STUDIONAME = 'MGM';

--t1.4
SELECT m2.TITLE
FROM MOVIE as m1 JOIN MOVIE as m2 ON m1.TITLE = 'Star Wars' and  m1.LENGTH < m2.LENGTH;

--t1.5
SELECT mx2.NAME
FROM MOVIEEXEC as mx1 JOIN MOVIEEXEC as mx2 ON mx1.NAME = 'Stephen Spielberg' and mx1.NETWORTH < mx2.NETWORTH;

--t1.6
SELECT MOVIE.TITLE
FROM MOVIEEXEC as mx1 JOIN MOVIEEXEC as mx2 ON mx1.NAME = 'Stephen Spielberg' and mx1.NETWORTH < mx2.NETWORTH 
						JOIN MOVIE ON MOVIE.PRODUCERC# = mx2.CERT#;

