DROP TABLE PHARMACY CASCADE CONSTRAINTS;
CREATE TABLE PHARMACY ( PharmacyID INT PRIMARY KEY, PName VARCHAR2(100), PAddress VARCHAR2(200), PPhone VARCHAR2(15), PEmail VARCHAR2(100)
);
INSERT INTO PHARMACY (PharmacyID, PName, PAddress, PPhone, PEmail) VALUES (1, 'Dawakom Pharmacy', '123 St', '123-456-7890', 'Dawakom@gmail.com');
INSERT INTO PHARMACY (PharmacyID, PName, PAddress, PPhone, PEmail) VALUES (2, 'Pharmacy One', '456 St', '987-654-3210', 'pharmacyOne@gmail.com');
INSERT INTO PHARMACY (PharmacyID, PName, PAddress, PPhone, PEmail) VALUES (3, 'Al Nada Pharmacy', '789 St', '555-555-5555', 'NadaPharmacy@gmail.com');
INSERT INTO PHARMACY (PharmacyID, PName, PAddress, PPhone, PEmail) VALUES (4, 'Bab Heta Pharmacy', '101 St', '222-333-4444', 'BabHetaPharmacy@gmail.com');
INSERT INTO PHARMACY (PharmacyID, PName, PAddress, PPhone, PEmail) VALUES (5, 'Hayat Pharmacy', '202 St', '333-444-5555', 'HayatPharmacy@gmail.com');
DROP TABLE STAFF CASCADE CONSTRAINTS; CREATE TABLE STAFF (
StaffID INT PRIMARY KEY, SName VARCHAR2(100), SRole VARCHAR2(50), SEmail VARCHAR2(100), SPhone VARCHAR2(15), Schedule VARCHAR2(100), PharmacyID INT,
FOREIGN KEY (PharmacyID) REFERENCES PHARMACY(PharmacyID) ON DELETE CASCADE
);
INSERT INTO STAFF (StaffID, SName, SRole, SEmail, SPhone, Schedule, PharmacyID) VALUES (1, 'Omair Saijary', 'Head_Pharmacist', 'omair@gmail.com', '123-456-7890', 'Sun-Thu 9-5',1);
INSERT INTO STAFF (StaffID, SName, SRole, SEmail, SPhone, Schedule, PharmacyID) VALUES (2, 'Omar Azab', 'Head_Pharmacist', 'omar@gmail.com', '987-654-3210', 'Sun-Thu 9-5',2);
INSERT INTO STAFF (StaffID, SName, SRole, SEmail, SPhone, Schedule, PharmacyID) VALUES (3, 'Hazem Abdeen', 'Head_Pharmacist', 'hazem@gmail.com', '555-555-5555', 'Sun-Thu 9-5',3);
 INSERT INTO STAFF (StaffID, SName, SRole, SEmail, SPhone, Schedule, PharmacyID) VALUES (4, 'Ibrahim Zraiqy', 'Head_Pharmacist', 'Ibrahim@gmail.com', '222-333-4444', 'Sun-Thu 9-5',4);
INSERT INTO STAFF (StaffID, SName, SRole, SEmail, SPhone, Schedule, PharmacyID) VALUES (5, 'Basel Abu Abood', 'Head_Pharmacist', 'basel@gmail.com', '333-444-5555', 'Sun-Thu 9-5',5);
INSERT INTO STAFF (StaffID, SName, SRole, SEmail, SPhone, Schedule, PharmacyID) VALUES (6,'John', 'Cashier', 'john@gmail.com', '555-666-7777', 'Sun-Thu 9-5',2); INSERT INTO STAFF (StaffID, SName, SRole, SEmail, SPhone, Schedule, PharmacyID) VALUES (7,'Hasan', 'Cashier', 'hasan@gmail.com', '777-888-9999', 'Sun-tue 12-5',3); INSERT INTO STAFF (StaffID, SName, SRole, SEmail, SPhone, Schedule, PharmacyID) VALUES (8,'Ahmad', 'Janitor', 'Ahmad@gmail.com', '999-888-7777', 'Sun-Thu 9-5',4);
DROP TABLE CASHIER CASCADE CONSTRAINTS; CREATE TABLE CASHIER (
StaffID INT PRIMARY KEY, SName VARCHAR2(100), SRole VARCHAR2(50), SEmail VARCHAR2(100), SPhone VARCHAR2(15), Schedule VARCHAR2(100),
FullTime CHAR(1) CHECK (FullTime IN ('Y', 'N')),
PartTime CHAR(1) CHECK (PartTime IN ('Y', 'N')),
PharmacyID INT,
FOREIGN KEY (StaffID) REFERENCES STAFF(StaffID) ON DELETE CASCADE, FOREIGN KEY (PharmacyID) REFERENCES PHARMACY(PharmacyID) ON DELETE
CASCADE );
INSERT INTO CASHIER (StaffID, SName, SRole, SEmail, SPhone, Schedule, FullTime, PartTime, PharmacyID)
VALUES (6, 'John', 'Cashier', 'john@gmail.com', '555-666-7777', 'Sun-Thu 9-5', 'Y', 'N', 2);
INSERT INTO CASHIER (StaffID, SName, SRole, SEmail, SPhone, Schedule, FullTime, PartTime, PharmacyID)
VALUES (7, 'Hasan', 'Cashier', 'hasan@gmail.com', '777-888-9999', 'Sun-tue 12-5', 'N', 'Y', 3);
DROP TABLE HEAD_PHARMACIST CASCADE CONSTRAINTS; CREATE TABLE HEAD_PHARMACIST (
StaffID INT PRIMARY KEY, SName VARCHAR2(100), SRole VARCHAR2(50), SEmail VARCHAR2(100),

 SPhone VARCHAR2(15),
Schedule VARCHAR2(100),
Qualifications VARCHAR2(200),
DateOfAppointment DATE,
PharmacyID INT UNIQUE,
FOREIGN KEY (StaffID) REFERENCES STAFF(StaffID) ON DELETE CASCADE, FOREIGN KEY (PharmacyID) REFERENCES PHARMACY(PharmacyID) ON DELETE
CASCADE );
INSERT INTO HEAD_PHARMACIST (StaffID, SName, SRole, SEmail, SPhone, Schedule, Qualifications, DateOfAppointment, PharmacyID)
VALUES (1, 'Omair Saijary', 'Head_Pharmacist', 'omair@gmail.com', '123-456-7890', 'Sun-Thu 9-5', 'PhD in Pharmacy', TO_DATE('2020-01-15', 'YYYY-MM-DD'), 1);
INSERT INTO HEAD_PHARMACIST (StaffID, SName, SRole, SEmail, SPhone, Schedule, Qualifications, DateOfAppointment, PharmacyID)
VALUES (2, 'Omar Azab', 'Head_Pharmacist', 'omar@gmail.com', '987-654-3210', 'Sun-Thu 9-5', 'PhD in Pharmacy', TO_DATE('2021-06-20', 'YYYY-MM-DD'), 2);
INSERT INTO HEAD_PHARMACIST (StaffID, SName, SRole, SEmail, SPhone, Schedule, Qualifications, DateOfAppointment, PharmacyID)
VALUES (3, 'Hazem Abdeen', 'Head_Pharmacist', 'hazem@gmail.com', '555-555-5555', 'Sun-Thu 9-5', 'PhD in Pharmacy', TO_DATE('2021-01-10', 'YYYY-MM-DD'), 3);
INSERT INTO HEAD_PHARMACIST (StaffID, SName, SRole, SEmail, SPhone, Schedule, Qualifications, DateOfAppointment, PharmacyID)
VALUES (4, 'Ibrahim Zraiqy', 'Head_Pharmacist', 'Ibrahim@gmail.com', '222-333-4444', 'Sun-Thu 9-5', 'PhD in Pharmacy', TO_DATE('2022-02-15', 'YYYY-MM-DD'), 4);
INSERT INTO HEAD_PHARMACIST (StaffID, SName, SRole, SEmail, SPhone, Schedule, Qualifications, DateOfAppointment, PharmacyID)
VALUES (5, 'Basel Abu Abood', 'Head_Pharmacist', 'basel@gmail.com', '333-444-5555', 'Sun-Thu 9-5', 'PhD in Pharmacy', TO_DATE('2023-03-01', 'YYYY-MM-DD'), 5);
DROP TABLE MEDICATION CASCADE CONSTRAINTS; CREATE TABLE MEDICATION (
MedCode INT PRIMARY KEY,
MName VARCHAR2(100),
MDesc VARCHAR2(200),
DosageForm VARCHAR2(50),
MCost DECIMAL(10, 2) NOT NULL CHECK (MCost >= 0), TClass VARCHAR2(50)
);

 INSERT INTO MEDICATION (MedCode, MName, MDesc, DosageForm, MCost, TClass) VALUES (1, 'Paracetamol', 'Pain reliever', 'Tablet', 10.50, 'Analgesic');
INSERT INTO MEDICATION (MedCode, MName, MDesc, DosageForm, MCost, TClass) VALUES (2, 'Ibuprofen', 'Anti-inflammatory', 'Tablet', 12.00, 'NSAID');
INSERT INTO MEDICATION (MedCode, MName, MDesc, DosageForm, MCost, TClass) VALUES (3, 'Amoxicillin', 'Antibiotic', 'Capsule', 20.00, 'Antibiotic');
INSERT INTO MEDICATION (MedCode, MName, MDesc, DosageForm, MCost, TClass) VALUES (4, 'Cough Syrup', 'Cough suppressant', 'Liquid', 15.00, 'Antitussive');
INSERT INTO MEDICATION (MedCode, MName, MDesc, DosageForm, MCost, TClass) VALUES (5, 'Vitamin D', 'Supplement', 'Tablet', 8.00, 'Vitamin');
DROP TABLE SUPPLIER CASCADE CONSTRAINTS; CREATE TABLE SUPPLIER (
SupplierID INT PRIMARY KEY, SName VARCHAR2(100), SContact VARCHAR2(100), PaymentTerms VARCHAR2(100)
);
INSERT INTO SUPPLIER (SupplierID, SName, SContact, PaymentTerms) VALUES (1, 'MedSupplies Inc.', 'contact@medsupplies.com', 'Net 30');
INSERT INTO SUPPLIER (SupplierID, SName, SContact, PaymentTerms) VALUES (2, 'PharmaCorp', 'info@pharmacorp.com', 'Net 60');
INSERT INTO SUPPLIER (SupplierID, SName, SContact, PaymentTerms) VALUES (3, 'HealthFirst', 'support@healthfirst.com', 'Net 45');
INSERT INTO SUPPLIER (SupplierID, SName, SContact, PaymentTerms) VALUES (4, 'Wellness Wholesale', 'sales@wellness.com', 'Net 30');
INSERT INTO SUPPLIER (SupplierID, SName, SContact, PaymentTerms) VALUES (5, 'CarePlus', 'service@careplus.com', 'Net 60');
DROP TABLE INVENTORY CASCADE CONSTRAINTS; CREATE TABLE INVENTORY (
InventoryID INT PRIMARY KEY,

 MedCode INT,
QtyOnHand INT,
ReorderLevel INT,
ExpDate DATE,
OrderDate DATE,
PharmacyID INT,
SupplierID INT,
FOREIGN KEY (MedCode) REFERENCES MEDICATION(MedCode) ON DELETE
CASCADE,
FOREIGN KEY (PharmacyID) REFERENCES PHARMACY(PharmacyID) ON DELETE
CASCADE,
FOREIGN KEY (SupplierID) REFERENCES SUPPLIER(SupplierID) ON DELETE CASCADE
);
INSERT INTO INVENTORY (InventoryID, MedCode, QtyOnHand, ReorderLevel, ExpDate, OrderDate, PharmacyID, SupplierID)
VALUES (1, 1, 100, 20, TO_DATE('2025-12-31', 'YYYY-MM-DD'), TO_DATE('2023-05-01', 'YYYY-MM-DD'), 1, 1);
INSERT INTO INVENTORY (InventoryID, MedCode, QtyOnHand, ReorderLevel, ExpDate, OrderDate, PharmacyID, SupplierID)
VALUES (2, 2, 200, 50, TO_DATE('2024-11-30', 'YYYY-MM-DD'), TO_DATE('2023-06-01', 'YYYY-MM-DD'), 2, 2);
INSERT INTO INVENTORY (InventoryID, MedCode, QtyOnHand, ReorderLevel, ExpDate, OrderDate, PharmacyID, SupplierID)
VALUES (3, 3, 150, 30, TO_DATE('2023-07-31', 'YYYY-MM-DD'), TO_DATE('2023-07-01', 'YYYY-MM-DD'), 3, 3);
INSERT INTO INVENTORY (InventoryID, MedCode, QtyOnHand, ReorderLevel, ExpDate, OrderDate, PharmacyID, SupplierID)
VALUES (4, 4, 80, 20, TO_DATE('2023-09-30', 'YYYY-MM-DD'), TO_DATE('2023-08-01', 'YYYY-MM-DD'), 4, 4);
INSERT INTO INVENTORY (InventoryID, MedCode, QtyOnHand, ReorderLevel, ExpDate, OrderDate, PharmacyID, SupplierID)
VALUES (5, 5, 120, 25, TO_DATE('2025-10-31', 'YYYY-MM-DD'), TO_DATE('2023-09-01', 'YYYY-MM-DD'), 5, 5);
INSERT INTO INVENTORY (InventoryID, MedCode, QtyOnHand, ReorderLevel, ExpDate, OrderDate, PharmacyID, SupplierID)
VALUES (6, 1, 110, 22, TO_DATE('2026-01-15', 'YYYY-MM-DD'), TO_DATE('2023-10-01', 'YYYY-MM-DD'), 1, 1);

 INSERT INTO INVENTORY (InventoryID, MedCode, QtyOnHand, ReorderLevel, ExpDate, OrderDate, PharmacyID, SupplierID)
VALUES (7, 2, 90, 15, TO_DATE('2024-12-01', 'YYYY-MM-DD'), TO_DATE('2023-09-01', 'YYYY-MM-DD'), 2, 2);
INSERT INTO INVENTORY (InventoryID, MedCode, QtyOnHand, ReorderLevel, ExpDate, OrderDate, PharmacyID, SupplierID)
VALUES (8, 3, 170, 45, TO_DATE('2023-10-01', 'YYYY-MM-DD'), TO_DATE('2023-06-15', 'YYYY-MM-DD'), 3, 3);
INSERT INTO INVENTORY (InventoryID, MedCode, QtyOnHand, ReorderLevel, ExpDate, OrderDate, PharmacyID, SupplierID)
VALUES (9, 4, 65, 18, TO_DATE('2024-11-01', 'YYYY-MM-DD'), TO_DATE('2023-07-20', 'YYYY-MM-DD'), 4, 4);
INSERT INTO INVENTORY (InventoryID, MedCode, QtyOnHand, ReorderLevel, ExpDate, OrderDate, PharmacyID, SupplierID)
VALUES (10, 5, 130, 28, TO_DATE('2026-02-28', 'YYYY-MM-DD'), TO_DATE('2023-11-10', 'YYYY-MM-DD'), 5, 5);
DROP TABLE PATIENT CASCADE CONSTRAINTS; CREATE TABLE PATIENT (
PatientID INT PRIMARY KEY, PName VARCHAR2(100), PAddress VARCHAR2(200), PPhone VARCHAR2(15), PDOB DATE
);
INSERT INTO PATIENT (PatientID, PName, PAddress, PPhone, PDOB) VALUES (1, 'Emily Clark', '789 Pine St', '123-456-7890', TO_DATE('1990-01-01', 'YYYY-MM-DD'));
INSERT INTO PATIENT (PatientID, PName, PAddress, PPhone, PDOB) VALUES (2, 'Michael Johnson', '456 Oak St', '987-654-3210', TO_DATE('1985-02-02', 'YYYY-MM-DD'));
INSERT INTO PATIENT (PatientID, PName, PAddress, PPhone, PDOB) VALUES (3, 'Sarah Davis', '123 Birch St', '555-555-5555', TO_DATE('1995-03-03', 'YYYY-MM-DD'));
INSERT INTO PATIENT (PatientID, PName, PAddress, PPhone, PDOB) VALUES (4, 'David Martinez', '202 Maple St', '222-333-4444', TO_DATE('2000-04-04', 'YYYY-MM-DD')); INSERT INTO PATIENT (PatientID, PName, PAddress, PPhone, PDOB) VALUES (5, 'Laura Lee', '303 Cedar St', '333-444-5555', TO_DATE('1980-05-05', 'YYYY-MM-DD'));
DROP TABLE PRESCRIPTION CASCADE CONSTRAINTS; CREATE TABLE PRESCRIPTION (

 PrescNum INT PRIMARY KEY, MedCode INT,
PatientID INT,
DosageInstr VARCHAR2(200), PrescQty INT,
PrescDate DATE,
FOREIGN KEY (MedCode) REFERENCES MEDICATION(MedCode) ON DELETE CASCADE,
FOREIGN KEY (PatientID) REFERENCES PATIENT(PatientID) ON DELETE CASCADE );
INSERT INTO PRESCRIPTION (PrescNum, MedCode, PatientID, DosageInstr, PrescQty, PrescDate)
VALUES (1, 1, 1, 'Take one tablet every 6 hours', 30, TO_DATE('2024-05-01', 'YYYY-MM-DD'));
INSERT INTO PRESCRIPTION (PrescNum, MedCode, PatientID, DosageInstr, PrescQty, PrescDate)
VALUES (2, 2, 2, 'Take one tablet twice a day', 20, TO_DATE('2024-05-02', 'YYYY-MM-DD'));
INSERT INTO PRESCRIPTION (PrescNum, MedCode, PatientID, DosageInstr, PrescQty, PrescDate)
VALUES (3, 3, 3, 'Take one capsule every 8 hours', 10, TO_DATE('2024-05-03', 'YYYY-MM-DD'));
INSERT INTO PRESCRIPTION (PrescNum, MedCode, PatientID, DosageInstr, PrescQty, PrescDate)
VALUES (4, 4, 4, 'Take 5ml every 4 hours', 25, TO_DATE('2024-05-04', 'YYYY-MM-DD'));
INSERT INTO PRESCRIPTION (PrescNum, MedCode, PatientID, DosageInstr, PrescQty, PrescDate)
VALUES (5, 5, 5, 'Take one tablet daily', 60, TO_DATE('2024-05-05', 'YYYY-MM-DD'));
DROP TABLE INSURANCE CASCADE CONSTRAINTS; CREATE TABLE INSURANCE (
InsuranceID INT PRIMARY KEY,
PatientID INT,
PolicyNum VARCHAR2(50) UNIQUE,
Coverage VARCHAR2(200),
FOREIGN KEY (PatientID) REFERENCES PATIENT(PatientID) ON DELETE CASCADE
);
INSERT INTO INSURANCE (InsuranceID, PatientID, PolicyNum, Coverage) VALUES (1, 1, 'POL12345', 'Full Coverage');

INSERT INTO INSURANCE (InsuranceID, PatientID, PolicyNum, Coverage) VALUES (2, 2, 'POL23456', 'Partial Coverage');
INSERT INTO INSURANCE (InsuranceID, PatientID, PolicyNum, Coverage) VALUES (3, 3, 'POL34567', 'Full Coverage');
INSERT INTO INSURANCE (InsuranceID, PatientID, PolicyNum, Coverage) VALUES (4, 4, 'POL45678', 'Full Coverage');
INSERT INTO INSURANCE (InsuranceID, PatientID, PolicyNum, Coverage) VALUES (5, 5, 'POL56789', 'No Coverage');
DROP TABLE PRESCRIBED_IN CASCADE CONSTRAINTS; CREATE TABLE PRESCRIBED_IN (
PrescNum INT,
MedCode INT,
PRIMARY KEY (PrescNum, MedCode),
FOREIGN KEY (PrescNum) REFERENCES PRESCRIPTION(PrescNum) ON DELETE
CASCADE,
FOREIGN KEY (MedCode) REFERENCES MEDICATION(MedCode) ON DELETE
CASCADE );
INSERT INTO PRESCRIBED_IN (PrescNum, MedCode) VALUES (1, 1); INSERT INTO PRESCRIBED_IN (PrescNum, MedCode) VALUES (2, 2); INSERT INTO PRESCRIBED_IN (PrescNum, MedCode) VALUES (3, 3); INSERT INTO PRESCRIBED_IN (PrescNum, MedCode) VALUES (4, 4); INSERT INTO PRESCRIBED_IN (PrescNum, MedCode) VALUES (5, 5);
DROP TABLE STORED_IN CASCADE CONSTRAINTS; CREATE TABLE STORED_IN (
InventoryID INT,
MedCode INT,
PRIMARY KEY (InventoryID, MedCode),
FOREIGN KEY (InventoryID) REFERENCES INVENTORY(InventoryID) ON DELETE
CASCADE,
FOREIGN KEY (MedCode) REFERENCES MEDICATION(MedCode) ON DELETE
CASCADE );
INSERT INTO STORED_IN (InventoryID, MedCode) VALUES (1, 1); INSERT INTO STORED_IN (InventoryID, MedCode) VALUES (2, 2); INSERT INTO STORED_IN (InventoryID, MedCode) VALUES (3, 3); INSERT INTO STORED_IN (InventoryID, MedCode) VALUES (4, 4); INSERT INTO STORED_IN (InventoryID, MedCode) VALUES (5, 5);
COMMIT;
