--ex 6, db ships


--6.2.1
Select ot.SHIP
From OUTCOMES as ot
--Where ot.SHIP Like 'C%' or ot.SHIP Like 'K%'
Group By ot.SHIP
Having Count(ot.BATTLE) > 1 and ot.SHIP Like 'C%' or ot.SHIP Like 'K%'

--6.2.2 ?? and those who have never participated in a battle
--Select o.SHIP, cl.COUNTRY
--From CLASSES as cl Join SHIPS as sh ON cl.CLASS = sh.CLASS JOIN OUTCOMES as o ON sh.NAME = o.SHIP
--Where o.RESULT != 'sunk'
--Group By o.SHIP, cl.COUNTRY

--6.2.3 ???
--Select cl.COUNTRY, Count(o.RESULT) as num_sunk_ships					--countries that have sunken ships
--From CLASSES as cl Join SHIPS as sh ON cl.CLASS = sh.CLASS JOIN OUTCOMES as o ON sh.NAME = o.SHIP
--Group By cl.COUNTRY, o.RESULT
--Having o.RESULT = 'sunk'
--Union
--Select cl.COUNTRY, Count(sh.NAME) as num_sunk_ships						--countries with no ships
--From CLASSES as cl Left Join SHIPS as sh ON cl.CLASS = sh.CLASS
--Where sh.CLASS is null		
--Group By cl.COUNTRY
--Union
--Select cl.COUNTRY, Count(o.RESULT) as num_sunk_ships					--countries that have no participated ships	???
--From CLASSES as cl Join SHIPS as sh ON cl.CLASS = sh.CLASS Left Join OUTCOMES as o ON sh.NAME = o.SHIP
--Where o.SHIP is null
--Group By cl.COUNTRY, o.RESULT, o.SHIP

--6.2.4 
Select ot.BATTLE, Count(sh.NAME) as	battle
From OUTCOMES as ot Join SHIPS as sh on ot.SHIP = sh.NAME
Group By ot.BATTLE
Having Count(sh.NAME) > (Select  Count(sh.NAME)
						From OUTCOMES as ot Join SHIPS as sh on ot.SHIP = sh.NAME
						Where ot.BATTLE = 'Guadalcanal'
						Group By ot.BATTLE);

--6.2.5
Select ot.BATTLE, Count(cl.COUNTRY) as	battle
From OUTCOMES as ot Join SHIPS as sh on ot.SHIP = sh.NAME Join CLASSES as cl ON cl.CLASS = sh.CLASS
Group By ot.BATTLE
Having Count(cl.COUNTRY) > (Select  Count(cl.COUNTRY)
							From OUTCOMES as ot Join SHIPS as sh on ot.SHIP = sh.NAME Join CLASSES as cl ON cl.CLASS = sh.CLASS
							Where ot.BATTLE = 'Surigao Strait'
							Group By ot.BATTLE);


--6.2.6 ???
Select*
From CLASSES as cl Join SHIPS as sh ON cl.CLASS = sh.CLASS
Where cl.DISPLACEMENT <=ALL(Select cl2.DISPLACEMENT From CLASSES as cl2) and cl.NUMGUNS >=All(Select cl2.NUMGUNS From CLASSES as cl2)

