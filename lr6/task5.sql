-- Выведите наименования всех объектов клуба заглавными буквами, если они содержат в названии слово ‘Tennis’
USE cd;
SELECT
    UPPER(facility) as facility
FROM cd.facilities
WHERE facility LIKE BINARY '%Tennis%' ;