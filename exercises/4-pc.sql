--ex 4, db pc

--4.2.1
SELECT pr.maker, pr.model, pr.type
FROM product as pr FULL JOIN laptop as lp ON pr.model = lp.model
WHERE pr.model is not null and lp.model is null
INTERSECT
SELECT pr.maker, pr.model, pr.type
FROM product as pr FULL JOIN printer as p ON pr.model = p.model
WHERE pr.model is not null and p.model is null
INTERSECT
SELECT pr.maker, pr.model, pr.type
FROM product as pr FULL JOIN pc as pers ON pr.model = pers.model
WHERE pr.model is not null and pers.model is null;

--4.2.1, second variant
--SELECT pr.maker, pr.model, pr.type
--FROM product as pr LEFT JOIN laptop as lp ON pr.model = lp.model
--WHERE pr.type = 'Laptop' and lp.model is null
--UNION
--SELECT pr.maker, pr.model, pr.type
--FROM product as pr LEFT JOIN printer as p ON pr.model = p.model
--WHERE pr.type = 'Printer' and p.model is null
--UNION
--SELECT pr.maker, pr.model, pr.type
--FROM product as pr LEFT JOIN pc as pers ON pr.model = pers.model
--WHERE pr.type = 'PC' and pers.model is null;

--4.2.2
SELECT pr.maker
FROM product as pr LEFT JOIN laptop as lp on pr.model = lp.model
WHERE pr.type = 'laptop' and lp.model is not null
INTERSECT
SELECT pr.maker
FROM product as pr LEFT JOIN printer as p on pr.model = p.model
WHERE pr.type = 'printer' and p.model is not null

--4.2.3
SELECT DISTINCT lp1.hd
FROM laptop as lp1 JOIN laptop as lp2 ON lp1.model != lp2.model and lp1.hd = lp2.hd

--4.2.4
SELECT *
FROM pc as p FULL JOIN product as pr ON p.model = pr.model 
WHERE pr.maker is null


