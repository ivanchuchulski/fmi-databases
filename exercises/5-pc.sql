--ex 5, db pc

--1.1
Select AVG(p.speed) as avg_speed
From pc as p;

--1.2
Select pr.maker, AVG(lp.screen) as avg_screen
From product as pr Join  laptop as lp on pr.model = lp.model 
Group By pr.maker

--1.3
Select AVG(lp.speed) as avg_speed
From laptop as lp
Where lp.price > 1000

--1.4
Select pr.maker, AVG(p.price) as avg_price
From product as pr Join pc as p On pr.model = p.model
Group By pr.maker
Having pr.maker = 'A'

--1.5 have to get only the prices from the inner table and then compute the average; bec (1+2+3+4+5)/5 != ((1+2)/2 + (1+2+3)/3)
SELECT result.maker , AVG (result.price) as AvgPrice
FROM 
(	
	(Select pr.maker, lp.price 
	From product as pr Join laptop as lp On pr.model = lp.model
	Where pr.maker = 'B')
	UNION ALL
	(Select pr.maker, pn.price
	From product as pr Join pc as pn ON pr.model = pn.model
	Where pr.maker = 'B')
) as result
Group By result.maker


--1.6
Select p.speed, AVG(p.price) as AvgPrice
From pc as p
Group By p.speed

--1.7 ??
--Select pr.maker, COUNT(pr.model) as number_of_pc
--From product as pr JOIN pc as p1 ON pr.model = p1.model JOIN pc as p2 ON pr.model = p2.model
--Group By pr.maker, pr.model
--Having COUNT(pr.model) >= 3 


--1.8 with subquery 
--Select pr.maker, p1.price
--From product as pr JOIN pc as p1 ON pr.model = p1.model
--Where p1.price >=ALL(Select p2.price From pc as p2);

--1.8 ??
Select pr.maker, p1.price
From product as pr JOIN pc as p1 ON pr.model = p1.model
Group By pr.maker, p1.price
Having p1.price >= MAX(p1.price)

--1.9
Select  p1.speed, AVG(p1.price) as AvgPrice
From pc as p1
Group By p1.speed
Having p1.speed > 800

--1.10 ??
Select pr.maker, AVG(p1.hd) as avg_hdd
From product as pr JOIN pc as p1 ON pr.model = p1.model, printer as pn
Where pr.model is not null
Group By pr.maker

