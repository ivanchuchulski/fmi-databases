Create Database test123

Create Table Product (
	maker CHAR (1),
	model CHAR (4),
	type VARCHAR(7),
);

Create Table Printer (
	code Int,
	model CHAR (4) ,
	price DECIMAL (5,2)
);

--inserting products
Insert into Product values('B','1121','PC');
Insert into Product values('A','1232','PC');
Insert into Product values('A','1233','PC');
Insert into Product values('E','1260','PC');
Insert into Product values('A','1276','Printer');
Insert into Product values('D','1288','Printer');
Insert into Product values('A','1298','Laptop');

--inserting printers
Insert into Printer values(1,'1276',400);
Insert into Printer values(2,'1433',270);
Insert into Printer values(3,'1434',290);
Insert into Printer values(4,'1401',150);

