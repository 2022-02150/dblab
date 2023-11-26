-- Рассчитайте для каждого члена количество рекомендаций, данных этим членом клуба, искючив членов, которые не давали рекомендаций.
use cd;
SELECT m1.firstname,   m1.surname,   COUNT(m2.memid) as recommendation_count
FROM cd.members as m1
JOIN cd.members as m2 ON m2.recommendedby = m1.memid
GROUP BY m1.memid;