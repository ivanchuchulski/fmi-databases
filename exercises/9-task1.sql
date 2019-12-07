Create Database Flights

Create Table Airline (
	code INT IDENTITY(1, 1) Primary Key ,
	name VARCHAR (30) NOT NULL,
	country VARCHAR (30)
);


Create Table Airplane (
	code INT IDENTITY(1, 1) Primary Key,
	type CHAR(1),
	seats INT,
	year INT
);

Create Table Airport (
	code INT IDENTITY(1, 1) Primary Key,
	name VARCHAR (30) NOT NULL,
	country VARCHAR (30),
	city VARCHAR (30)
);

Create Table Booking (
	code INT IDENTITY(1, 1) Primary Key,
	agency VARCHAR(20) Not Null,
	airline_code INT,
	flight_number INT,
	customer_id INT,
	booking_date DATE,
	flight_date DATE,
	price REAL,
	status CHAR(1)
);

Create Table Flight(
	fnumber INT IDENTITY(1, 1),
	airline_operator INT,
	dep_airport INT,
	arr_airport INT,
	flight_time REAL,
	flight_duration REAL,
	airplane INT	
);

Create Table Agency (
	name VARCHAR (20) Primary Key,
	coutry VARCHAR(20),
	city VARCHAR(20),
	phone VARCHAR(20)
)

Create Table Customer(
	id INT IDENTITY(1, 1),
	fname VARCHAR(30),
	lname VARCHAR(30),
	email VARCHAR(30)
)

--------------------
INSERT INTO AIRLINE
VALUES ('AZ', 'Alitalia', 'Italy'),
('BA', 'British Airways', 'United Kingdom'),
('LH', 'Lufthansa', 'Germany'),
('SR', 'Swissair', 'Switzerland'),
('FB', 'Bulgaria Air', 'Bulgaria'),
('AF', 'Air France', 'France'),
('TK', 'Turkish Airlines', 'Turkey'),
('AA', 'American Airlines', 'United States');
INSERT INTO AIRPORT
VALUES ('SOF', 'Sofia International', 'Bulgaria', 'Sofia'),
('CDG', 'Charles De Gaulle', 'France', 'Paris'),
('ORY', 'Orly', 'France', 'Paris'),
('LBG', 'Le Bourget', 'France', 'Paris'),
('JFK', 'John F Kennedy International', 'United States', 'New York'),
('ORD', 'Chicago O''Hare International', 'United States', 'Chicago'),
('FCO', 'Leonardo da Vinci International', 'Italy', 'Rome'),
('LHR', 'London Heathrow', 'United Kingdom', 'London');
INSERT INTO AIRPLANE
VALUES ('319', 'Airbus A319', 150, 1993),
('320', 'Airbus A320', 280, 1984),
('321', 'Airbus A321', 150, 1989),
('100', 'Fokker 100', 80, 1991),
('738', 'Boeing 737-800', 90, 1997),
('735', 'Boeing 737-800', 90, 1995);
INSERT INTO FLIGHT
VALUES ('FB1363', 'AZ', 'SOF', 'ORY', '12:45', 100, '738'),
('FB1364', 'AZ', 'CDG', 'SOF', '10:00', 120, '321'),
('SU2060', 'AZ', 'LBG', 'SOF', '11:10', 110, '738'),
('SU2061', 'TK', 'SOF', 'JFK', '13:00', 110, '320'),
('FB363', 'FB', 'SOF', 'ORD', '15:10', 110, '738'),
('FB364', 'FB', 'LHR', 'SOF', '21:05', 120, '738');
INSERT INTO CUSTOMER
VALUES (1, 'Petar', 'Milenov', 'petter@mail.com'),
(2, 'Dimitar', 'Petrov', 'petrov@mail.com'),
(3, 'Ivan', 'Ivanov', 'ivanov@mail.com'),
(4, 'Petar', 'Slavov', 'slavov@mail.com'),
(5, 'Bogdan', 'Bobov', 'bobov@mail.com');
INSERT INTO AGENCY
VALUES ('Travel One', 'Bulgaria', 'Sofia', '0783482233'),
('Travel Two', 'Bulgaria', 'Plovdiv', '02882234'),
('Travel Tour', 'Bulgaria', 'Sofia', NULL),
('Aerotravel', 'Bulgaria', 'Varna', '02884233');
INSERT INTO BOOKING
VALUES ('YN298P', 'Travel One', 'FB', 'FB1363', 1, '2013-11-18', '2013-12-25', 300, 0),
('YA298P', 'Travel Two', 'FB', 'FB1364', 2, '2013-12-18', '2013-12-25', 300, 1),
('YB298P', 'Travel Tour', 'FB', 'SU2060', 3, '2014-01-18', '2014-02-25', 400, 0),
('YC298P', 'Travel One', 'FB', 'SU2061', 4, '2014-11-11', '2014-11-25', 350, 0),
('YD298P', 'Travel Tour', 'FB', 'FB363', 1, '2013-11-03', '2013-12-20', 250, 1),




