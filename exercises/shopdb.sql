
Create Database shop

Create Table product (
	model VARCHAR(4),
	maker CHAR(1) Not Null 	Constraint pk_prod Primary Key Default 'unknown',
	type VARCHAR(10) NOT NULL DEFAULT 'pc'
);

--Drop Table product

Select *
From product












