--ex 7, db pc

--2.1
--Insert into	pc(code, model, speed, ram, hd, cd, price)
--		Values (12, '1100', 2400, 2048, 500, '52x', 299);

--Insert into product(model, maker, type)
--Values ('1100', 'C', 'pc');

--2.2
--Delete from pc
--Where pc.model = '1100';

--2.3
--Delete from laptop
--Where laptop.model In ( Select distinct lp.model
--						From laptop as lp Join product as pr On lp.model = pr.model
--						Where pr.maker In (Select distinct maker
--											From product
--											Where type != 'printer'));

--2.4
--Update product
--Set maker = 'A'
--Where maker = 'B';

--2.5
--Update pc 
--Set price = price / 2, hd = hd + 20;

--2.6
--Update laptop
--Set screen += 1
--Where laptop.model In (Select distinct lp.model 
--						From product as pr Join laptop as lp On pr.model = lp.model 
--						Where pr.maker = 'B')
