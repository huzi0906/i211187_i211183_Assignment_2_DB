DROP DATABASE db_assignment_02;
create database db_assignment_02;
use db_assignment_02;

DROP TABLE IF EXISTS Airplane;
DROP TABLE IF EXISTS PlaneType;
DROP TABLE IF EXISTS Hangar;
DROP TABLE IF EXISTS PlaneOwner;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Pilot;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS ServiceRecord;
DROP TABLE IF EXISTS PilotAuthorization;
DROP TABLE IF EXISTS MaintainceAuthorization;

CREATE TABLE PlaneType(
	TypeID INT,
	ModelNo VARCHAR(15),
	Capacity INT,
	_Weight INT,
	PRIMARY KEY (TypeID)
);

CREATE TABLE Hangar(
	HangarID INT,
	Number VARCHAR(10),
	Capacity INT,
	_Location VARCHAR(20),
	PRIMARY KEY (HangarID)
);

CREATE TABLE PlaneOwner(
	OwnerID INT,
	_Name VARCHAR(30),
	_Address VARCHAR(50),
	TelephoneNo VARCHAR(8),
	OwnerType VARCHAR(20) NOT NULL CHECK (OwnerType IN ('Individual', 'Corporation')),
	IndividualID INT,
	CorporationID INT,
	PRIMARY KEY (OwnerID)
);

CREATE TABLE Airplane(
	RegNo VARCHAR(4),
	TypeID INT,
	HangarID INT,
	OwnerID INT,
	FOREIGN KEY (TypeID) REFERENCES PlaneType(TypeID),
	FOREIGN KEY (HangarID) REFERENCES Hangar(HangarID),
	FOREIGN KEY (OwnerID) REFERENCES PlaneOwner(OwnerID),
	PRIMARY KEY (RegNo)
);

CREATE TABLE Person(
	PersonID INT,
	SSN VARCHAR(11),
	_Name VARCHAR(30),
	_Address VARCHAR(50),
	TelephoneNo VARCHAR(8),
	PRIMARY KEY (PersonID)
);

CREATE TABLE Pilot(
	PilotID INT,
	LicenseNumber VARCHAR(8),
	Restrictions VARCHAR(30),
	PersonID INT,
	FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
	PRIMARY KEY (PilotID)
);

CREATE TABLE Employee(
	EmployeeID INT,
	Salary INT,
	_Shift VARCHAR(10), --ENUM NOT SUPPORTED BY DBMS
	PersonID INT,
	FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
	PRIMARY KEY (EmployeeID)
);

CREATE TABLE ServiceRecord(
	RecordID INT,
	MaintenanceDate DATE,
	HoursSpent INT,
	WorkType VARCHAR(30),
	AirplaneRegNo VARCHAR(4),
	EmployeeID INT,
	FOREIGN KEY (AirplaneRegNo) REFERENCES Airplane(RegNo),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
	PRIMARY KEY (RecordID)
);

CREATE TABLE PilotAuthorization(
	AuthorizationID INT,
	PilotID INT,
	PlaneTypeID INT,
	FOREIGN KEY (PilotID) REFERENCES Pilot(PilotID),
	FOREIGN KEY (PlaneTypeID) REFERENCES PlaneType(TypeID),
	PRIMARY KEY (AuthorizationID)
);

CREATE TABLE MaintenanceAuthorization(
	MaintenanceAuthorizationID INT,
	EmployeeID INT,
	PlaneTypeID INT,
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
	FOREIGN KEY (PlaneTypeID) REFERENCES PlaneType(TypeID),
	PRIMARY KEY (MaintenanceAuthorizationID)
);

INSERT INTO PlaneType VALUES (1, 'Boeing 747', 416, 178800);
INSERT INTO PlaneType VALUES (2, 'Airbus A380', 853, 560000);
INSERT INTO PlaneType VALUES (3, 'Boeing 787', 330, 254000);

INSERT INTO Hangar VALUES (1, 'Hangar 1', 10, 'Pakistan');
INSERT INTO Hangar VALUES (2, 'Hangar 2', 15, 'Los Angeles');
INSERT INTO Hangar VALUES (3, 'Hangar 3', 20, 'Pakistan');
INSERT INTO Hangar VALUES (4, 'Hangar 4', 19, 'New York');

INSERT INTO PlaneOwner VALUES (1, 'John Smith', '123 Main St., New York, NY', '555-1234', 'Individual', 1, NULL);
INSERT INTO PlaneOwner VALUES (2, 'Mary Johnson', '456 Elm St., Los Angeles, CA', '555-5678', 'Individual', 2, NULL);
INSERT INTO PlaneOwner VALUES (3, 'Robert Lee', '789 Oak St., Chicago, IL', '555-9012', 'Individual', 3, NULL);
INSERT INTO PlaneOwner VALUES (4, 'ABC Corporation', '123 Main St., New York, NY', '555-1234', 'Corporation', NULL, 1);
INSERT INTO PlaneOwner VALUES (5, 'XYZ Corporation', '456 Elm St., Los Angeles, CA', '555-5678', 'Corporation', NULL, 2);
INSERT INTO PlaneOwner VALUES (6, 'DEF Corporation', '789 Oak St., Chicago, IL', '555-9012', 'Corporation', NULL, 3);

INSERT INTO AirPlane VALUES ('N123', 1, 1, 3);
INSERT INTO AirPlane VALUES ('N124', 2, 2, 5);
INSERT INTO AirPlane VALUES ('N125', 3, 3, 6);
INSERT INTO AirPlane VALUES ('N126', 2, 2, 2);

INSERT INTO Person VALUES (1, '123-45-6789', 'John Smith', '123 Main St., New York, NY', '555-1234');
INSERT INTO Person VALUES (2, '234-56-7890', 'Mary Johnson', '456 Elm St., Los Angeles, CA', '555-5678');
INSERT INTO Person VALUES (3, '345-67-8901', 'Robert Lee', '789 Oak St., Chicago, IL', '555-9012');

INSERT INTO Pilot VALUES (1, 'P1234567', 'None', 2);
INSERT INTO Pilot VALUES (2, 'P2345678', 'Glasses', 3);
INSERT INTO Pilot VALUES (3, 'P3456789', 'Night flying only', 1);

INSERT INTO Employee VALUES (1, 50000, 'Day', 1);
INSERT INTO Employee VALUES (2, 60000, 'Night', 2);
INSERT INTO Employee VALUES (3, 55000, 'Evening', 3);

INSERT INTO ServiceRecord VALUES (1, '2022-01-01', 10, 'Oil change', 'N123', 1);
INSERT INTO ServiceRecord VALUES (2, '2022-02-15', 20, 'Tire replacement', 'N124', 2);
INSERT INTO ServiceRecord VALUES (3, '2022-03-25', 15, 'Brake inspection', 'N125', 3);

INSERT INTO PilotAuthorization VALUES (1, 1, 1);
INSERT INTO PilotAuthorization VALUES (2, 2, 2);
INSERT INTO PilotAuthorization VALUES (3, 3, 3);

INSERT INTO MaintenanceAuthorization VALUES (1, 1, 1);
INSERT INTO MaintenanceAuthorization VALUES (2, 2, 2);
INSERT INTO MaintenanceAuthorization VALUES (3, 3, 3);

SELECT * FROM Airplane;
SELECT * FROM PlaneType;
SELECT * FROM Hangar;
SELECT * FROM PlaneOwner;
SELECT * FROM Person;
SELECT * FROM Pilot;
SELECT * FROM Employee;
SELECT * FROM ServiceRecord;
SELECT * FROM PilotAuthorization;
SELECT * FROM MaintenanceAuthorization;