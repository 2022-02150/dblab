/* Выбрать всех членов клуба, зарегистрированных с сентября 2012 года.*/
USE cd;
SELECT memid, surname, firstname, JOINDATE  FROM members  WHERE joindate > '2012-07-01' AND joindate < '2012-08-01';
