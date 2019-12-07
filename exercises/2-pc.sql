--excercise 2 - queries on multiple relations
--db pc

--t2.1
SELECT product.maker, laptop.speed
FROM laptop JOIN product ON laptop.model = product.model
WHERE laptop.hd > 9;

--t2.2
SELECT laptop.model, laptop.price
FROM product JOIN laptop ON laptop.model = product.model
WHERE product.maker = 'B'
UNION
SELECT pc.model, pc.price
FROM product JOIN pc ON product.model = pc.model
WHERE product.maker = 'B'
UNION
SELECT printer.model, printer.price
FROM product JOIN printer ON product.model = printer.model
WHERE product.maker = 'B';

--t2.3
SELECT product.maker
FROM product JOIN laptop ON laptop.model = product.model
EXCEPT
SELECT product.maker
FROM product JOIN pc ON product.model = pc.model

--2.4
SELECT DISTINCT p1.hd
FROM pc as p1 JOIN pc as p2 ON p1.code != p2.code and p1.hd = p2.hd;


--2.5
SELECT p1.model, p2.model
FROM pc as p1 JOIN pc as p2 ON p1.speed = p2.speed and p1.ram = p2.ram and p1.model < p2.model

--2.6
SELECT DISTINCT product.maker
FROM pc as p1 JOIN pc as p2 ON p1.code != p2.code and (p1.speed > 400 or p2.speed > 400) 
				JOIN product ON p1.model = product.model and p2.model = product.model;