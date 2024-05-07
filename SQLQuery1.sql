-- Create Clinic Database
CREATE DATABASE ClinicDB;
GO

-- Use Clinic Database
USE ClinicDB;
GO

-- Create Tables
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender CHAR(1),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialty VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATETIME,
    Description VARCHAR(500),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
CREATE TABLE Medicine (
    MedicineID INT PRIMARY KEY,
    MedicineName VARCHAR(255) NOT NULL,
    Manufacturer VARCHAR(255),
    ExpiryDate DATE,
    Price DECIMAL(10, 2),
    Quantity INT
);
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountName VARCHAR(255) NOT NULL,
	 AccountPassWorld VARCHAR(255) NOT NULL,
    AccountType VARCHAR(50) NOT NULL,
);
CREATE TABLE Examinationform (
    ExaminationformID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    NgayKham DATE NOT NULL,
    TrieuChung VARCHAR(255),
    ChanDoan VARCHAR(255),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    DateRecorded DATE,
    Diagnosis VARCHAR(500),
    Prescription VARCHAR(500),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
CREATE TABLE diseasehistory (
    DiseaseHistoryID INT PRIMARY KEY,
    PatientID INT,
    symptom VARCHAR(255),
    diagnose VARCHAR(255),
    Dayoftheexamination DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
-- Optionally, you can add more tables for additional functionality such as medications, procedures, etc.

