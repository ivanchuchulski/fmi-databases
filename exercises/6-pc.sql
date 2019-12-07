--ex 6, db pc

--6.3.1 ???
Select lp1.model, lp1.code, lp1.screen
From laptop as lp1 Join laptop as lp2 On lp1.model = lp2.model
Where  lp1.screen = 15 or lp2.screen = 12 and lp1.screen = 12 or lp2.screen = 15;

--6.3.2
--Select distinct pc1.model, pr1.maker
--From product as pr1 Join pc as pc1 on pr1.model = pc1.model 
--					Join (	Select pr2.maker, lp2.price
--							From product as pr2 Join laptop as lp2 on pr2.model = lp2.model
--							Group By pr2.maker, lp2.price
--							Having lp2.price <=All(	Select lp3.price
--													From product as pr3 Join laptop as lp3 on pr3.model = lp3.model and pr3.maker = pr2.maker)

--							) as cheap_laptop On pr1.maker = cheap_laptop.maker and cheap_laptop.price > pc1.price;

--3.2 simpler
--Select distinct pc1.model, pr1.maker
--From product as pr1 Join pc as pc1 on pr1.model = pc1.model 
--					Join (	Select pr2.maker, lp2.price
--							From product as pr2 Join laptop as lp2 on pr2.model = lp2.model
--							Where lp2.price <=All(	Select lp3.price
--													From product as pr3 Join laptop as lp3 on pr3.model = lp3.model and pr2.maker = pr3.maker)

--							) as cheap_laptop On pr1.maker = cheap_laptop.maker and cheap_laptop.price > pc1.price;


