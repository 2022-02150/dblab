 -- Выберите процент использования объектов по месяцам, упорядочив по возрастанию
USE cd;
WITH slots AS (SELECT facility, SUM(b.slots) AS bookcost,   
DATE_FORMAT(b.starttime, '%y.%m') AS Год_Месяц
FROM facilities f
JOIN bookings b ON b.facid = f.facid
GROUP BY f.facid, Год_Месяц)
SELECT slot1.facility AS facility, ROUND(slot1.bookcost / SUM(slot2.bookcost) * 100, 1) AS usage_percent, slot1.Год_Месяц
FROM slots AS slot1
JOIN slots AS slot2 ON slot1.Год_Месяц = slot2.Год_Месяц
GROUP BY slot1.facility, slot1.bookcost, slot1.Год_Месяц
ORDER BY usage_percent ASC;