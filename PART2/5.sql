use db_assignment_02;

SELECT Person._Address
FROM Person
JOIN Pilot
ON Person.PersonID = Pilot.PersonID
WHERE Pilot.LicenseNumber = 'P2345678';