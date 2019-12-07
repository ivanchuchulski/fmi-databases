--task2
Create Database task2

Create Table Users(
	id INT Identity(1, 1),
	email VARCHAR(25),
	password VARCHAR(25),
	regdate Date
)

Create Table Friends (
	friend1 INT,
	friend2 INT
)

Create Table Walls (
	wallUserId INT,
	authorId INT,
	msgText VARCHAR(30),
	msgDate Date
)

Create Table Groups(
	groupid INT Identity(1, 1),
	name VARCHAR(10),
	desription VARCHAR (30) Default ''
)

Create Table GroupMembers(
	groupid INT,
	memberid INT
)


Insert into Users
Values ('ab1@gmail.com', '1234', '2018-12-02'),
		('ab2@gmail.com', '12345', '2018-12-03')


Insert into Friends
Values (1,2)

Insert into Groups
Values ('dbclass', 'desr')

Insert into GroupMembers
Values (1, 2)

Select*
From Users

Select *
From Groups

Select*
From Friends

Select*
From GroupMembers

