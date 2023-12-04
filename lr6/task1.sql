--  Выберите начальное и конечное время последних 10 аренд  объектов, упорядочив их по времени их окончания.
USE cd;
SELECT starttime AS "Начальное", ADDTIME(starttime, SEC_TO_TIME(slots * 1800)) AS Конечное
FROM bookings
ORDER BY Конечное DESC
LIMIT 10;
