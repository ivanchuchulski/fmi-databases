--ex3, db pc

--2.1
Select pr.maker										
From product as pr
Where pr.model IN (	Select p1.model
					From pc as p1					
					Where p1.speed > 500);
--2.1 with Join
--Select distinct pr.maker
--From product as pr Join pc as p1 On pr.model = p1.model
--Where p1.speed > 500

--2.2
Select p1.code, p1.model, p1.price
From printer as p1
Where p1.price >=All(	Select p2.price
						From printer as p2);

--2.3
SELECT*
FROM laptop as lp
WHERE lp.speed <ALL(	Select p1.speed
						From pc as p1);

----2.4 ???
SELECT t.model, t.price
FROM
  (
    (	SELECT p1.model, p1.price 
		FROM pc as p1 
		WHERE p1.price >=ALL(SELECT p2.price FROM pc as p2)
	)
    UNION
    (	SELECT lp.model, lp.price 
		FROM laptop as lp 
		WHERE lp.price >=ALL(SELECT lp2.price FROM laptop as lp2)
	)
    UNION
    (	SELECT pr1.model, pr1.price 
		FROM printer as pr1 
		WHERE pr1.price >=ALL(SELECT pr2.price FROM printer as pr2)
	)
  ) as t


--2.5
SELECT pr.maker
FROM product as pr JOIN printer as p1 ON pr.model = p1.model
WHERE p1.color = 'y' and  p1.price <= ALL(	SELECT p2.price
											FROM printer as p2
											WHERE p2.color = 'y')
--2.6
SELECT pr1.maker
FROM product as pr1 JOIN pc as p1 ON pr1.model = p1.model
WHERE p1.ram <=ALL(SELECT p2.ram FROM pc as p2)
UNION
SELECT pr2.maker
FROM product as pr2 JOIN pc as p1 ON pr2.model = p1.model
WHERE p1.speed >=ALL(SELECT p3.speed FROM pc as p3);