--ex 13, db ships


--13.8
--a)
--Create View BiggerGuad
--As
Select b.NAME
From BATTLES as b Join OUTCOMES as o On b.NAME = o.BATTLE 
Group By b.NAME
Having Count(o.Ship) >All	(Select Count(ot1.SHIP) as ship_count
								From BATTLES as bat1 Join OUTCOMES as ot1 On bat1.NAME = ot1.BATTLE
								Where bat1.NAME = 'Guadalcanal')

--13.9
Delete From OUTCOMES
Where OUTCOMES.BATTLE =Any (Select ot1.BATTLE
							From OUTCOMES as ot1
							Group By ot1.BATTLE
							Having Count(Ship) = 1)
					
--13.10

INSERT INTO outcomes
 VALUES ('Missouri','Surigao Strait','sunk'),
		('Missouri','North Cape','sunk'),
		('Missouri','North Atlantic','ok');

Delete From OUTCOMES
Where OUTCOMES.SHIP =Any (Select ot1.SHIP
							From OUTCOMES as ot1
							Where ot1.RESULT = 'sunk'
							Group By ot1.SHIP
							Having Count(ot1.RESULT) >= 2)
