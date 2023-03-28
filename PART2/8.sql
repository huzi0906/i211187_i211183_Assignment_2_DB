use db_assignment_02;

SELECT Airplane.RegNo
FROM Airplane
WHERE Airplane.RegNo NOT IN (SELECT ServiceRecord.AirplaneRegNo
FROM ServiceRecord);