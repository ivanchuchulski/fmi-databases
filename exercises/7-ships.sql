--ex 7, db ships

Select *
From CLASSES 

Select *
From SHIPS

--Select *
--From CLASSES as cl Join SHIPS as sh on cl.CLASS = sh.CLASS

--3.1
--adding the ships' class 
--Insert into CLASSES(CLASS, type, COUNTRY, NUMGUNS, BORE, DISPLACEMENT)
--Values ('Nelson', 'bb', 'Gt.Britain', 9, 16, 34000);

----then adding the ship details
--Insert into SHIPS(name, class, LAUNCHED)
--Values ('Nelson', 'Nelson', 1927)

--Insert into SHIPS(name, class, LAUNCHED)
--Values ('Rodney', 'Nelson', 1927)


--3.2
--Select *
--From ships

--Delete from ships
--Where ships.NAME In (	Select sh.NAME
--						From OUTCOMES as o Join SHIPS as sh On o.SHIP = sh.NAME
--						Where o.RESULT = 'sunk')

--Select *
--From ships

--3.3
Update CLASSES
Set	bore *= 2.5, DISPLACEMENT /= 1.1;

