
--10.1
--Create View v_avio As
Select a.NAME, f.FNUMBER, Count(b.CUSTOMER_ID) as cnt
From AIRLINES as a Join BOOKINGS as b On a.CODE = b.AIRLINE_CODE Join FLIGHTS as f On b.FLIGHT_NUMBER = f.FNUMBER and f.AIRLINE_OPERATOR = a.CODE
Where b.status=1
Group By a.NAME, f.FNUMBER


--Select *
--From v_avio

--10.2
--Create View v_zad2 As
Select t.ag, t.custid
From (	Select b.AGENCY as ag, b.CUSTOMER_ID as custid, Count(b.CUSTOMER_ID) as cnt
							From BOOKINGS as b
							Group By b.CUSTOMER_ID, b.AGENCY) as t
Group By t.ag, t.custid, t.cnt
Having t.cnt >=ALL(			Select b.AGENCY as ag, b.CUSTOMER_ID as custid, Count(b.CUSTOMER_ID) as cnt
							From BOOKINGS as b
							Group By b.CUSTOMER_ID, b.AGENCY)





--10.3
--Create View zad3 As
--Select *
--From AGENCIES as a
--Where a.CITY = 'Sofia'
--With Check Option


--10.4
--Create View zad3 As
--Select *
--From AGENCIES as a
--Where a.PHONE is NULL
--With Check Option

--INSERT INTO zad3
--VALUES('T1 Tour', 'Bulgaria', 'Sofia','+359');

--INSERT INTO zad3
--VALUES('T2 Tour', 'Bulgaria', 'Sofia',null);

--INSERT INTO zad3
--VALUES('T3 Tour', 'Bulgaria', 'Varna','+359');

--INSERT INTO zad3
--VALUES('T4 Tour', 'Bulgaria', 'Varna',null);

--INSERT INTO zad3
--VALUES('T4 Tour', 'Bulgaria', 'Sofia','+359');


--Drop View v_avio
--Drop View v_zad2
--Drop View v_zad3

