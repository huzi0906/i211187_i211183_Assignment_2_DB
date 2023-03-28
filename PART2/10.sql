use db_assignment_02;

SELECT ServiceRecord.MaintenanceDate, ServiceRecord.HoursSpent, ServiceRecord.WorkType, Person._Name
FROM ServiceRecord
JOIN Employee
ON ServiceRecord.EmployeeID = Employee.EmployeeID
JOIN Person
ON Employee.PersonID = Person.PersonID
WHERE ServiceRecord.AirplaneRegNo = 'N123';