use db_assignment_02;

SELECT Person._Name
FROM Person
JOIN Pilot
ON Person.PersonID = Pilot.PersonID
JOIN PilotAuthorization
ON Pilot.PilotID = PilotAuthorization.PilotID
JOIN PlaneType
ON PilotAuthorization.PlaneTypeID = PlaneType.TypeID
WHERE PlaneType.ModelNo = 'Airbus A380';