--excercise 1 - simple queries
--db ships

--3.1
Select CLASSES.CLASS, CLASSES.COUNTRY
From CLASSES
Where CLASSES.NUMGUNS < 10;

--3.2
Select ships.name as shipName
From ships
Where ships.launched < 1918;

--3.3
Select outcomes.ship, outcomes.battle
From outcomes
Where outcomes.result = 'sunk';

--3.4
Select ships.name
From ships
Where ships.name = ships.class;

--3.5
Select ships.name
From ships
Where ships.name like 'R%';		--names starting with R

--t3.6
Select ships.name
From ships
Where ships.name like '% %';	--names containing 2 or more words