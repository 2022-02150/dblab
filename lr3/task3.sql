USE cd;
/* Выберите членов клуба, которые рекомендовали других членов для вступления. */
SELECT surname, firstname 
FROM members
WHERE memid IN (SELECT recommendedby FROM members WHERE recommendedby IS NOT NULL);