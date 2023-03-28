use db_assignment_02;

SELECT Airplane.RegNo
FROM Airplane
WHERE Airplane.HangarID IN (SELECT Hangar.HangarID
FROM Hangar
WHERE Hangar._Location = 'New York');