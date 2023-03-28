# ERD EXPLANATION
The entities and relationships identified from the given case study and assumptions made are given below:

### ENTITIES
* Airplane
* PlaneType
* Hangar
* PlaneOwner
* Person
* Pilot
* Employee
* ServiceRecord
* PilotAuthorization
* MaintainceAuthorization

### RELATIONSHIPS
* Airplane has a PlaneType
* Airplane is stored in Hangar
* Airplane is owned by an Owner.
* Corporation and Individual are disjoint subclasses of Owner.
* Employee and Pilot are overlapping subclasses of Person.
* Airplane has ServiceRecord.
* Employee maintains ServiceRecord.
* Authorization is granted to Pilot.
* MaintenanceAuthorization is granted to Employee.
* Authorization is required to fly PlaneType.
* MaintenanceAuthorization is required to maintain PlaneType.

### ASSUMPTIONS
* A Hanger may not be associated with any Airplane.
* There are PlaneType, which are not authorized to be flown or done maintenance.
* Each Pilot and each Employee have some authorizations.
* Onwer has subclasses Individual and Corporation.

# SQL QUERIES

### Query 1
Write a SQL query to find the registration numbers of airplanes that are using the Hangar in Pakistan. (using joins)
![Query 1](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q1.png?raw=true)
### Query 2
Write a SQL query to find the registration numbers of airplanes that are using the Hangar of New York. (using subquery)
![Query 2](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q2.png?raw=true)
### Query 3
Write a SQL query to find the registration numbers of airplanes whose ModelNumber is Airbus A380
![Query 3](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q3.png?raw=true)
### Query 4
Write a SQL query to find how many airplanes are using Hangar of Los Angeles
![Query 4](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q4.png?raw=true)
### Query 5
Write a SQL query to find the Address of Pilot whose Licence is P2345678. 
![Query 5](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q5.png?raw=true)
### Query 6
Write a SQL query to find the name of Employee whose Salary is Maximum.
![Query 6](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q6.png?raw=true)
### Query 7
Write a SQL Query to find the Location of Hangar in which Airbus the A380 is placed.
![Query 7](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q7.png?raw=true)
### Query 8
Write a SQL query to find the registration numbers of airplanes that have never undergone maintenance.
![Query 8](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q8.png?raw=true)
### Query 9
Calculate the total capacity of all hangars as “Total Capacity”
![Query 9](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q9.png?raw=true)
### Query 10
Select all service records for an N123 airplane, along with the names of the employees who performed the maintenance
![Query 10](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q10.png?raw=true)
### Query 11
Select all pilot names who are authorized to fly a specific plane type 1
![Query 11](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q11.png?raw=true)
### Query 12
Select all pilot names who are authorized to fly a specific plane Airbus A380
![Query 12](https://github.com/huzi0906/i211187_i211183_Assignment_2_DB/tree/main/PART2/Images/q12.png?raw=true)