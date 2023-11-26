/*Добавьте еще одно spa с такими же характеристиками как в 
задании 1, сгенерировав новое ID.*/
USE cd;
INSERT INTO facilities (facid, facility, membercost, guestcost, initialoutlay, monthlymaintenance)
SELECT  (select max(facid) + 1 from facilities), facility, membercost, guestcost , initialoutlay, monthlymaintenance FROM facilities WHERE facility = "spa" limit 1;

SELECT * FROM facilities;