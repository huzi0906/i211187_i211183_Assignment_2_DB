use db_assignment_02;

SELECT Hangar._Location
FROM Hangar
JOIN Airplane
ON Hangar.HangarID = Airplane.HangarID
JOIN PlaneType
ON Airplane.TypeID = PlaneType.TypeID
WHERE PlaneType.ModelNo = 'Airbus A380';
