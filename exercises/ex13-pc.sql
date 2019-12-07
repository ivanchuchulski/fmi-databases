--ex 13, db pc

--13.5
Select Distinct pr.maker
From product as pr
Where pr.type = 'Laptop' And pr.maker In (	Select pr1.maker
											From product as pr1
											Where pr1.type = 'Printer')

--13.6
--Update pc
--Set price = price - (price / 0.05)
--Where model In(	Select pr1.model
--				From (	Select maker, AVG(price) as avprice
--						From printer as p Join product as pr On p.model = pr.model
--						Group By maker ) 
--							as av_printer_makers Join product as pr1 On av_printer_makers.maker = pr1.maker
--				Where av_printer_makers.avprice > 200)


--13.7
Select p1.hd, Min(p1.price) as MinPrice
From pc as p1
Where p1.hd >= 10 And p1.hd <= 30
Group By p1.hd



