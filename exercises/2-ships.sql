--excercise 2 - queries on multiple relations
--db ships

--t3.1
SELECT sh.NAME
FROM ships as sh join CLASSES as cl ON sh.CLASS = cl.CLASS
WHERE cl.DISPLACEMENT > 50000;

--3.2
SELECT sh.NAME, cl.DISPLACEMENT, cl.NUMGUNS 
FROM ships as sh join CLASSES as cl ON sh.CLASS = cl.CLASS JOIN OUTCOMES ON OUTCOMES.SHIP = sh.NAME
WHERE OUTCOMES.BATTLE = 'Guadalcanal';

--t3.3
SELECT cl.COUNTRY 
FROM SHIPS as sh join CLASSES as cl ON sh.CLASS = cl.CLASS and cl.type = 'bc'
INTERSECT
SELECT cl.COUNTRY 
FROM SHIPS as sh join CLASSES as cl ON sh.CLASS = cl.CLASS and cl.type = 'bb'

--t3.4
SELECT o1.SHIP
FROM OUTCOMES as o1 JOIN BATTLES as b1 ON o1.RESULT = 'damaged' and o1.BATTLE = b1.NAME
					JOIN OUTCOMES as o2 ON o1.ship = o2.SHIP and o2.RESULT = 'ok'
					JOIN BATTLES as b2 ON o2.BATTLE = b2.NAME and b1.DATE < b2.DATE;

--3.4 second variant, the date conditnion is not satisfied
SELECT o1.SHIP
FROM OUTCOMES as o1 JOIN BATTLES as b1 ON o1.RESULT = 'damaged' and o1.BATTLE = b1.NAME
INTERSECT
SELECT o2.SHIP
FROM OUTCOMES as o2 JOIN BATTLES as b2 ON o2.RESULT = 'ok'and o2.BATTLE = b2.NAME