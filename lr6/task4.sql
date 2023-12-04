-- Выведите список членов клуба, отформатированных как 'Surname, Firstname'
USE cd;
SELECT CONCAT(surname, ', ', firstname) AS Список_членов_клуба FROM members
WHERE memid != 0;