use db_assignment_02;

SELECT Airplane.RegNo
FROM Airplane
JOIN Hangar
ON Airplane.HangarID = Hangar.HangarID
WHERE Hangar._Location = 'Pakistan';