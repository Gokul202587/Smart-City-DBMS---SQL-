INSERT INTO Citizens (CitizenID, Fullname, DOB, Gender, Phone, Email, Address, AadharNo) VALUES
(101,'Harshvanth','2003-03-13','Male','9790807322','harsh@gmail.com','poonthottam,Chennai','537434435445'),
(102,'Shyam','2002-05-18','Male','6374188393','shyam@gmail.com','meenambakkam,Chennai','979734432323'),
(103,'Swetha','2003-04-20','Female','7904881051','swetha@gmail.com','ranipet,Vellore','098734356454'),
(104,'Sankari','2002-01-17','Female','7397416232','sankari@gmail.com','thoothukudi,tuticorin','054334342354'),
(105,'Saro','2002-12-25','Male','9342940530','saro@gmail.com','kumbakonam,kumba','893475656435');

INSERT INTO Households (HouseholdID, OwnerCitizenID, Address, Wardnumber, Numberofresidents, Propertytype) VALUES
(201,101,'poonthottam, Chennai',08,04,'Apartment'),
(202,102,'meenambakkam, Chennai',09,05,'Ownhouse'),
(203,103,'ranipet, Vellore',07,03,'Ownhouse'),
(204,104,'thoothukudi, tuticorin',34,02,'Apartment'),
(205,105,'kumbakonam, kumba',58,08,'Apartment');

INSERT INTO Smartmeters (MeterID, HouseholdID, Metertype, Installationdate, Status) VALUES
(11,201,'Electric','2020-05-11','Active'),
(22,202,'Gas' ,'2023-08-23','Active'),
(33,203,'Water','2022-03-29','Inactive'),
(44,204,'Electric','2021-09-26','Active'),
(55,205,'Water','2019-04-30','Active');

INSERT INTO Energyusage (RecordID, HouseholdID, Usagemonth, Electricityunits, Waterlitres, Gasunits) VALUES
(99,201,2025,230.33,200.67,2),
(88,202,2025,632.54,600.53,1),
(77,203,2025,334.56,300.87,3),
(66,204,2025,543.67,500.32,4),
(56,205,2025,244.45,210.00,5);

INSERT INTO Emergencyservices (ServiceID, Servicetype, Vehicleno, Baselocation, Status) VALUES
(21,'Ambulance','TN-01-AB-2002','Rajiv gandhi govt hospital Chennai','Available'),
(23,'Fireengine','TN-22-DS-2353','Mercury fire services Coimbatore','Available'),
(24,'Police','TN-22-ED-7643','S nine Police station Nagapattinam','Available'),
(25,'Fireengine','TN-43-RE-8787','Mercury fire services Coimbatore','Available'),
(26,'Ambulance','TN-32-RF-1992','TVK hospitals Chennai',' On the way');

INSERT INTO EmergencyRequests (RequestID, ServiceID, CitizenID, RequestTime, ResponseTime, SeverityLevel, Status) VALUES
(111, 21,101, '2024-12-05 14:33:00', '2024-12-05 14:45:00', 'High', 'Closed'),
(222, 23,103, '2024-12-01 09:10:00', '2024-12-01 09:28:00', 'Medium', 'Closed'),
(333, 26,105, '2024-12-10 21:00:00', '2024-12-01 09:28:00', 'Low', 'Open');

INSERT INTO ParkingLots (ParkingID, Location, Capacity, AvailableSlots, Chargesperhr) VALUES
(9, 'Express Avenue Mall, Chennai', 500, 120, 30.00),
(8, 'Brookefields Mall, Coimbatore', 350, 80, 25.00),
(7, 'Vishaal De Mall, Tuticorin', 250, 50, 20.00);

INSERT INTO ParkingTransactions (TransactionID, ParkingID, VehicleNumber, EntryTime, ExitTime, Chargespaid) VALUES
(56, 9, 'TN10-BM-3321', '2024-12-12 10:05:00', '2024-12-12 12:30:00', 75.00),
(65, 8, 'TN66-AP-9901', '2024-12-08 15:20:00', '2024-12-08 16:00:00', 25.00),
(90, 7, 'TN59-CC-1234', '2024-12-02 18:40:00', '2024-12-02 20:10:00', 40.00);
