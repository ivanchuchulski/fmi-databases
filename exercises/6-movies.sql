--ex 6, db movies

--6.1.1
Select mv1.TITLE, mv1.YEAR, mv1.LENGTH
From MOVIE as mv1
Where (mv1.LENGTH > 120 and mv1.YEAR < 2000) or mv1.LENGTH is null;

--6.1.2
Select ms1.NAME, ms1.GENDER
From MOVIESTAR as ms1
Where ms1.name like 'J%' and ms1.BIRTHDATE > 1948
Order By mst.NAME DESC;

--6.1.3
Select mv.STUDIONAME, Count(distinct si.STARNAME) as num_actors
From MOVIE as mv JOIN STARSIN as si on mv.TITLE = si.MOVIETITLE
Group By mv.STUDIONAME

--6.1.4
Select st.STARNAME, Count(st.MOVIETITLE) as num_movies
From STARSIN as st
Group By st.STARNAME

--6.1.5
Select mv.STUDIONAME, mv.TITLE, mv.YEAR
From MOVIE as mv
Group By mv.STUDIONAME, mv.TITLE, mv.YEAR
Having mv.Year >=ALL(	Select mv2.YEAR
						From MOVIE as mv2
						Group By mv2.STUDIONAME, mv2.YEAR			--Where mv2.STUDIONAME = mv.STUDIONAME); ---and nothing else
						Having mv2.STUDIONAME = mv.STUDIONAME);

--6.1.6
Select mst.NAME
From MOVIESTAR as mst
Where mst.GENDER = 'M' and mst.BIRTHDATE>=ALL(Select mst2.BIRTHDATE From MOVIESTAR as mst2 Where mst2.GENDER = 'M');

--6.1.7
Select mv.STUDIONAME, si.STARNAME, Count(mv.TITLE) as num_movies
From STARSIN as si JOIN MOVIE as mv ON si.MOVIETITLE = mv.TITLE
Group By mv.STUDIONAME, si.STARNAME
Having Count(mv.TITLE) >=ALL(	Select Count(mv.TITLE) as num_movies
								From STARSIN as si2 JOIN MOVIE as mv2 ON si2.MOVIETITLE = mv2.TITLE
								Group By mv2.STUDIONAME, si2.STARNAME);

--6.1.8
Select si.MOVIETITLE, si.MOVIEYEAR, Count(si.STARNAME) as num_actors
From STARSIN as si 
Group By si.MOVIETITLE, si.MOVIEYEAR
Having Count(si.STARNAME) > 2;




