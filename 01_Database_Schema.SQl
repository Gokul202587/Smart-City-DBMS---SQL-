CREATE DATABASE SMARTCITY
USE SMARTCITY

CREATE TABLE Citizens (
	CitizenID INT PRIMARY KEY AUTO_INCREMENT,						
	FullName VARCHAR (30) NOT NULL,
    DOB DATE,
    Gender Varchar (15) NOT NULL,
    Phone VARCHAR (11) ,
    Email VARCHAR (50) NOT NULL,
    Address VARCHAR (50) NOT NULL,
    AadharNo VARCHAR (50)
    );

CREATE TABLE Households (
	HouseholdID INT PRIMARY KEY AUTO_INCREMENT,
    OwnerCitizenID INT NOT NULL,
    Address VARCHAR (300),
    WardNumber INT NOT NULL,
    NumberofResidents INT NOT NULL,
    Propertytype VARCHAR (50),
    FOREIGN KEY (OwnerCitizenID) REFERENCES Citizens (CitizenID)
    );
    
CREATE TABLE Smartmeters (
	MeterID INT PRIMARY KEY AUTO_INCREMENT,
    HouseholdID INT NOT NULL,
    Metertype VARCHAR(30),
    Installationdate DATE,
    Status VARCHAR (30),
    FOREIGN KEY (HouseholdID) REFERENCES Households (HouseholdID)
    );
    
CREATE TABLE Energyusage (
	RecordID INT PRIMARY KEY AUTO_INCREMENT,
    HouseholdID INT NOT NULL,
    Usagemonth Year,
    Electricityunits DECIMAL (10,2),
    Waterlitres DECIMAL (12,2),
    GasUnits DECIMAL (10,2),
    FOREIGN KEY (HouseholdID) REFERENCES Households (HouseholdID)
    );
    
CREATE TABLE Emergencyservices (
	ServiceID INT PRIMARY KEY AUTO_INCREMENT,
    Servicetype VARCHAR (30),
    Vehicleno VARCHAR (30),
    Baselocation VARCHAR (100),
    Status VARCHAR (30)
    );
    
CREATE TABLE Emergencyrequests (
	RequestID INT PRIMARY KEY AUTO_INCREMENT,
    ServiceID INT NOT NULL,
    CitizenID INT NOT NULL,
    Requesttime DATETIME,
    Responsetime DATETIME,
    Severitylevel VARCHAR (30),
    Status VARCHAR (30),
    FOREIGN KEY (CitizenID) REFERENCES Citizens (CitizenID),
    FOREIGN KEY (ServiceID) REFERENCES Emergencyservices (ServiceID)
    );
    
CREATE TABLE Parkinglots (
	ParkingID INT PRIMARY KEY AUTO_INCREMENT,
    Location VARCHAR (100),
    Capacity INT,
    Availableslots INT,
    Chargesperhr DECIMAL (6,2)
    );
    
CREATE TABLE Parkingtransactions (
	TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    ParkingID INT,
    Vehiclenumber VARCHAR (20),
    Entrytime DATETIME,
    Exittime DATETIME,
    Chargespaid DECIMAL (10,2),
    FOREIGN KEY (ParkingID) REFERENCES Parkinglots (ParkingID)
    );
