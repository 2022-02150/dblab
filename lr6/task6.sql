-- Выведите все объектов клуба, если они содержат в названии слово  ‘Tennis’ в произвольном регистре.
USE cd;
SELECT f.facility
  FROM facilities f
  WHERE f.facility LIKE '%Tennis%';