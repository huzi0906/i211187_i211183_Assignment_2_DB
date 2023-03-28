use db_assignment_02;

SELECT Person._Name
FROM Person
JOIN Employee
ON Person.PersonID = Employee.PersonID
WHERE Employee.Salary = (SELECT MAX(Employee.Salary)
FROM Employee);