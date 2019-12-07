--excercise 1 - simple queries--
--db movies--

--t1.1--
Select ADDRESS
From STUDIO
Where NAME = 'Disney';

--t1.2--
Select BIRTHDATE
From MOVIESTAR
Where NAME = 'Jack Nicholson';

--t1.3--
Select STARNAME
From STARSIN
Where MOVIEYEAR = 1980 or MOVIETITLE Like '%Knight%';

--t1.4--
Select NAME
From MOVIEEXEC
Where NETWORTH > 10000;

--t1.5--
Select NAME
From MOVIESTAR
Where GENDER = 'M' or ADDRESS = 'Prefect Rd.';
