
Select *
From Product

Select *
From Printer

--
Alter Table Printer
Add type VARCHAR (6) Check (type In ('laser', 'matrix', 'jet')),
	color CHAR (1) Check (color In ('y', 'n'))

Insert into Printer values(4,'1401',150, 'jet', 'y');

--
Alter Table Printer
Drop Column price

--
Drop Table Printer, Product