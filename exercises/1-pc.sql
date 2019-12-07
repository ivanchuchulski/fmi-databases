--exercise 1, simple queries, db pc

--2.1
Select pc.model, pc.speed as MHz, pc.hd as GB 
From pc
Where pc.price < 1200;

--2.2
Select distinct product.maker
From product
Where product.type = 'Printer';

--t2.3
Select laptop.model, laptop.ram, laptop.screen
From laptop
Where laptop.price > 1000;

--2.4
Select*
From printer
Where printer.color = 'y';

--2.5
Select pc.model, pc.speed, pc.hd
From pc
Where (pc.cd = '12x' or pc.cd = '16x') and pc.price < 2000;