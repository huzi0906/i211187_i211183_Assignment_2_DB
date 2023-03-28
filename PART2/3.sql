use db_assignment_02;

SELECT Airplane.RegNo
FROM Airplane
JOIN PlaneType
ON Airplane.TypeID = PlaneType.TypeID
WHERE PlaneType.ModelNo = 'Airbus A380';