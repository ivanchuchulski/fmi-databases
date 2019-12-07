--ex 5, db ships

--2.1
Select Count(cl.CLASS) as no_of_classes
From CLASSES as cl
Where cl.TYPE = 'bb';

--2.2
Select cl.CLASS, AVG(cl.NUMGUNS)
From CLASSES as cl
Where cl.TYPE = 'bb'
Group By cl.CLASS;

--2.3
Select AVG(cl.NUMGUNS) as avg_numguns
From CLASSES as cl
Where cl.TYPE = 'bb'

--2.4
Select cl.CLASS, MIN(sh.LAUNCHED) as FirstYear, MAX(sh.LAUNCHED) as LastYear
From CLASSES as cl JOIN SHIPS as sh ON cl.CLASS = sh.CLASS
Group By cl.CLASS;

--2.5
Select sh.CLASS, COUNT(o.RESULT) as no_sunk
From OUTCOMES as o JOIN SHIPS as sh ON o.SHIP = sh.NAME
Group By sh.CLASS, o.RESULT
Having o.RESULT = 'sunk';

--2.6 maybe correct
Select sh.CLASS, COUNT(o.RESULT) as no_sunk
From OUTCOMES as o JOIN SHIPS as sh ON o.SHIP = sh.NAME
Group By sh.CLASS, o.RESULT
Having o.RESULT = 'sunk' and COUNT(sh.NAME) >= 2

-- for 2.6 checking
--Select sh.CLASS, COUNT(*) as no_sunk
--From OUTCOMES as o JOIN SHIPS as sh ON o.SHIP = sh.NAME
--Group By sh.CLASS
--
--2.7 maybe correct
Select cl.COUNTRY, AVG(cl.BORE) as avg_bore, COUNT(*)
From CLASSES as cl
Group By cl.COUNTRY