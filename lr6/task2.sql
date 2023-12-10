--  Выберите количество аренд объектов клуба в каждый месяц.
USE cd;
SELECT f.facility, YEAR(b.starttime) AS 'Год', MONTH(b.starttime) AS 'Месяц', COUNT(*) AS 'Количество аренд' 
FROM facilities f
INNER JOIN bookings b ON f.facid = b.facid
GROUP BY f.facility, MONTH(b.starttime), YEAR(b.starttime);

