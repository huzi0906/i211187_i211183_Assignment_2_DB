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