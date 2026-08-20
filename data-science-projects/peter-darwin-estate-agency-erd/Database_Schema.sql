-- Table for Branches
CREATE TABLE Branch (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR2(50),
    BranchLocation VARCHAR2(100),
    ManagerName VARCHAR2(50)
);

-- Table for Staff
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    BranchID INT,
    StaffName VARCHAR2(50),
    Position VARCHAR2(50),
    CONSTRAINT FK_Staff_Branch FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

-- Table for Clients
CREATE TABLE Client (
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR2(50),
    MaxLeaseLength INT,
    PetsAllowed CHAR(1),
    ChildrenAllowed CHAR(1)
);

-- Table for Rental Properties
CREATE TABLE RentalProperty (
    PropertyCode INT PRIMARY KEY,
    BranchID INT,
    Area VARCHAR2(50),
    Address VARCHAR2(100),
    Bedrooms INT,
    Bathrooms INT,
    ReceptionRooms INT,
    HasGarage CHAR(1),
    PropertyType VARCHAR2(20),
    MonthlyRental DECIMAL(10,2),
    CONSTRAINT FK_RentalProperty_Branch FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

-- Table for Customers renting properties
CREATE TABLE RentalCustomer (
    RentalCustomerID INT PRIMARY KEY,
    PropertyCode INT,
    ClientID INT,
    CONSTRAINT FK_RentalCustomer_Property FOREIGN KEY (PropertyCode) REFERENCES RentalProperty(PropertyCode),
    CONSTRAINT FK_RentalCustomer_Client FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

-- Table for Properties to be Sold
CREATE TABLE PropertyForSale (
    PropertyCode INT PRIMARY KEY,
    BranchID INT,
    Area VARCHAR2(50),
    Address VARCHAR2(100),
    Bedrooms INT,
    Bathrooms INT,
    ReceptionRooms INT,
    HasGarage CHAR(1),
    PropertyType VARCHAR2(20),
    IsFreehold CHAR(1),
    Price DECIMAL(10,2),
    CurrentState VARCHAR2(10),
    DateOnMarket DATE,
    CONSTRAINT FK_PropertyForSale_Branch FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

-- Table for Potential Buyers
CREATE TABLE PotentialBuyer (
    BuyerID INT PRIMARY KEY,
    Name VARCHAR2(50),
    Address VARCHAR2(100)
);

-- Table for Property Requirements
CREATE TABLE PropertyRequirements (
    RequirementID INT PRIMARY KEY,
    BuyerID INT,
    Area VARCHAR2(50),
    MinBedrooms INT,
    MinBathrooms INT,
    MinReceptionRooms INT,
    GarageRequired CHAR(1),
    MaxPrice DECIMAL(10,2),
    CONSTRAINT FK_PropertyRequirements_Buyer FOREIGN KEY (BuyerID) REFERENCES PotentialBuyer(BuyerID)
);

-- Table for Viewing Appointments
CREATE TABLE ViewingAppointment (
    AppointmentID INT PRIMARY KEY,
    PropertyCode INT,
    StaffID INT,
    CONSTRAINT FK_ViewingAppointment_Property FOREIGN KEY (PropertyCode) REFERENCES PropertyForSale(PropertyCode),
    CONSTRAINT FK_ViewingAppointment_Staff FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

-- Table for Offers
CREATE TABLE Offer (
    OfferID INT PRIMARY KEY,
    PropertyCode INT,
    BuyerID INT,
    Status VARCHAR2(10),
    CONSTRAINT FK_Offer_Property FOREIGN KEY (PropertyCode) REFERENCES PropertyForSale(PropertyCode),
    CONSTRAINT FK_Offer_Buyer FOREIGN KEY (BuyerID) REFERENCES PotentialBuyer(BuyerID)
);

-- Now, add new constraints
-- Add Foreign Key to RentalCustomer Table
ALTER TABLE RentalCustomer ADD CONSTRAINT FK_RentalCustomer_Property FOREIGN KEY (PropertyCode) REFERENCES RentalProperty(PropertyCode);
-- Add Foreign Key to RentalCustomer Table
ALTER TABLE RentalCustomer ADD CONSTRAINT FK_RentalCustomer_Client FOREIGN KEY (ClientID) REFERENCES Client(ClientID);
-- Add Foreign Key to PropertyForSale Table
ALTER TABLE PropertyForSale ADD CONSTRAINT FK_PropertyForSale_Branch FOREIGN KEY (BranchID) REFERENCES Branch(BranchID);
-- Add Foreign Key to PropertyRequirements Table
ALTER TABLE PropertyRequirements ADD CONSTRAINT FK_PropertyRequirements_Buyer FOREIGN KEY (BuyerID) REFERENCES PotentialBuyer(BuyerID);
-- Add Foreign Key to ViewingAppointment Table
ALTER TABLE ViewingAppointment ADD CONSTRAINT FK_ViewingAppointment_Property FOREIGN KEY (PropertyCode) REFERENCES PropertyForSale(PropertyCode);
-- Add Foreign Key to ViewingAppointment Table
ALTER TABLE ViewingAppointment ADD CONSTRAINT FK_ViewingAppointment_Staff FOREIGN KEY (StaffID) REFERENCES Staff(StaffID);
-- Add Foreign Key to Offer Table
ALTER TABLE Offer ADD CONSTRAINT FK_Offer_Property FOREIGN KEY (PropertyCode) REFERENCES PropertyForSale(PropertyCode);
-- Add Foreign Key to Offer Table
ALTER TABLE Offer ADD CONSTRAINT FK_Offer_Buyer FOREIGN KEY (BuyerID) REFERENCES PotentialBuyer(BuyerID);


-- Insert data into Branch table
INSERT INTO Branch (BranchID, BranchName, BranchLocation, ManagerName)
VALUES (1, 'Main Branch', 'Rhondda Cynon Taff', 'John Doe');

-- Insert data into Staff table
INSERT INTO Staff (StaffID, BranchID, StaffName, Position)
VALUES (101, 1, 'Alice Smith', 'Sales Agent');

INSERT INTO Staff (StaffID, BranchID, StaffName, Position)
VALUES (102, 1, 'Bob Johnson', 'Rental Agent');

-- Insert data into Client table
INSERT INTO Client (ClientID, ClientName, MaxLeaseLength, PetsAllowed, ChildrenAllowed)
VALUES (201, 'Client1', 6, 'Y', 'Y');

INSERT INTO Client (ClientID, ClientName, MaxLeaseLength, PetsAllowed, ChildrenAllowed)
VALUES (202, 'Client2', 12, 'N', 'Y');

-- Insert data into RentalProperty table
INSERT INTO RentalProperty (PropertyCode, BranchID, Area, Address, Bedrooms, Bathrooms, ReceptionRooms, HasGarage, PropertyType, MonthlyRental)
VALUES (301, 1, 'Downtown', '123 Main St', 2, 1, 1, 'N', 'Apartment', 1200.00);

INSERT INTO RentalProperty (PropertyCode, BranchID, Area, Address, Bedrooms, Bathrooms, ReceptionRooms, HasGarage, PropertyType, MonthlyRental)
VALUES (302, 1, 'Suburb', '456 Oak St', 3, 2, 2, 'Y', 'House', 1500.00);


-- Insert data into RentalCustomer table
INSERT INTO RentalCustomer (RentalCustomerID, PropertyCode, ClientID)
VALUES (401, 301, 201);

INSERT INTO RentalCustomer (RentalCustomerID, PropertyCode, ClientID)
VALUES (402, 302, 202);

-- Insert data into PropertyForSale table
INSERT INTO PropertyForSale (PropertyCode, BranchID, Area, Address, Bedrooms, Bathrooms, ReceptionRooms, HasGarage, PropertyType, IsFreehold, Price, CurrentState, DateOnMarket)
VALUES (501, 1, 'Suburb', '789 Maple St', 4, 3, 2, 'Y', 'House', 'Y', 250000.00, 'Unsold', TO_DATE('2023-11-12', 'YYYY-MM-DD'));

INSERT INTO PropertyForSale (PropertyCode, BranchID, Area, Address, Bedrooms, Bathrooms, ReceptionRooms, HasGarage, PropertyType, IsFreehold, Price, CurrentState, DateOnMarket)
VALUES (502, 1, 'Downtown', '101 Pine St', 3, 2, 1, 'N', 'Apartment', 'N', 180000.00, 'Unsold', TO_DATE('2023-11-15', 'YYYY-MM-DD'));

-- Insert data into PotentialBuyer table
INSERT INTO PotentialBuyer (BuyerID, Name, Address)
VALUES (601, 'Buyer1', '789 Oak St');

INSERT INTO PotentialBuyer (BuyerID, Name, Address)
VALUES (602, 'Buyer2', '456 Birch St');


-- Insert data into PropertyRequirements table
INSERT INTO PropertyRequirements (RequirementID, BuyerID, Area, MinBedrooms, MinBathrooms, MinReceptionRooms, GarageRequired, MaxPrice)
VALUES (701, 601, 'Suburb', 3, 2, 2, 'Y', 220000.00);

INSERT INTO PropertyRequirements (RequirementID, BuyerID, Area, MinBedrooms, MinBathrooms, MinReceptionRooms, GarageRequired, MaxPrice)
VALUES (702, 602, 'Downtown', 2, 1, 1, 'N', 200000.00);

-- Insert data into ViewingAppointment table
INSERT INTO ViewingAppointment (AppointmentID, PropertyCode, StaffID)
VALUES (801, 501, 101);

INSERT INTO ViewingAppointment (AppointmentID, PropertyCode, StaffID)
VALUES (802, 502, 102);

-- Insert data into Offer table
INSERT INTO Offer (OfferID, PropertyCode, BuyerID, Status)
VALUES (901, 501, 601, 'Pending');

INSERT INTO Offer (OfferID, PropertyCode, BuyerID, Status)
VALUES (902, 502, 602, 'Accepted');


