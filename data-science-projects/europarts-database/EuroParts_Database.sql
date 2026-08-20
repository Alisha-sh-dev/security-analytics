-- Part Table
CREATE TABLE Part (
    part_number_with_prefix CHAR(12) PRIMARY KEY,
    part_number CHAR(10),
    description VARCHAR2(40),
    discount_sw_code CHAR(4),
    discount_sw_percent NUMBER(3),
    krona_net NUMBER,
    discount_uk_code CHAR(4),
    discount_uk_percent NUMBER(3),
    sterling_net NUMBER
);

-- Supplier Table
CREATE TABLE Supplier (
    supplier_number CHAR(4) PRIMARY KEY,
    supplier_name VARCHAR2(255),
    address VARCHAR2(255),
    town VARCHAR2(50),
    county VARCHAR2(50),
    postcode VARCHAR2(10),
    contact_number VARCHAR2(15),
    email_address VARCHAR2(255),
    country VARCHAR2(50)
);

-- Warehouse Table
CREATE TABLE Warehouse (
    warehouse_id VARCHAR2(50) PRIMARY KEY,
    address VARCHAR2(255),
    town VARCHAR2(50),
    county VARCHAR2(50),
    postcode VARCHAR2(10),
    contact_number VARCHAR2(15)
);

-- Bin Table
CREATE TABLE Bin (
    bin_number VARCHAR2(10) PRIMARY KEY,
    warehouse_id VARCHAR2(50) REFERENCES Warehouse(warehouse_id)
);

-- Location Table
CREATE TABLE Location (
    part_number_with_prefix CHAR(12) REFERENCES Part(part_number_with_prefix),
    bin_number VARCHAR2(10) REFERENCES Bin(bin_number),
    quantity NUMBER,
    PRIMARY KEY (part_number_with_prefix, bin_number)
);

-- Invoice Table
CREATE TABLE Invoice (
    invoice_number NUMBER PRIMARY KEY,
    idate DATE,
    vat_total NUMBER,
    total_value NUMBER,
    supplier_number CHAR(4) REFERENCES Supplier(supplier_number)
);

-- InvoiceDetail Table
CREATE TABLE InvoiceDetail (
    invoice_number NUMBER REFERENCES Invoice(invoice_number),
    part_number_with_prefix CHAR(12) REFERENCES Part(part_number_with_prefix),
    quantity NUMBER,
    net_price NUMBER,
    net_vat NUMBER,
    PRIMARY KEY (invoice_number, part_number_with_prefix)
);

-- Users Table
CREATE TABLE Users (
  id INT PRIMARY KEY,
  username VARCHAR2(255),
  role VARCHAR2(255),
  created_at DATE
);

-- Follows Table
CREATE TABLE Follows (
  following_user_id INT REFERENCES Users(id),
  followed_user_id INT REFERENCES Users(id),
  created_at DATE,
  PRIMARY KEY (following_user_id, followed_user_id)
);

-- Posts Table
CREATE TABLE Posts (
  id INT PRIMARY KEY,
  title VARCHAR2(255),
  body CLOB, -- Using CLOB for large text data
  user_id INT REFERENCES Users(id),
  status VARCHAR2(255),
  created_at DATE
);


-- Insert data into Part table
INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('104531331', '4531331', 'Bushing', 'D51', 35, 38.81, '1', 25, 3.68);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('105112495', '5112495', 'Retaining Ring', 'D51', 35, 5.48, '1', 25, 0.49);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('104543518', '4543518', 'Bushing', 'D51', 35, 25.44, '1', 25, 2.19);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('104246112', '4246112', 'Rubber Block', 'D51', 35, 5.44, '1', 25, 0.74);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('1055557379', '55557379', 'Chain Gear', 'D01', 30, 177.34, '90', '45', 12.62);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('109178336', '9178336', 'Chain Gear', 'D01', 30, 177.05, '90', '45', 12.29);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('105450192', '5450192', 'Chain Gear', 'D01', 30, 519.98, '1', '25', 51.68);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('104411997', '4411997', 'Switch', 'D51', 35, 116.47, '1', '25', 11.59);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('107585086', '7585086', 'Chain Tension', 'D51', 35, 536.55, '90', '45', 43.93);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('108373078', '8373078', 'bearing', 'D51', 35, 16.96, '90', '45', 1.93);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('109129669', '9129669', 'Cylinder Head', 'C00', 18, 12160.17, '2', '10', 1099.87);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('109522822', '9522822', 'Relay', 'D51', 35, 377.67, '1', '25', 44.39);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('104161162', '4161162', 'Seals', 'D01', 30, 15.53, '1', '25', 1.42);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('107522733', '7522733', 'Fuel Pump', 'D81', 40, 72.36, '36', '50', 29.33);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('107536923', '7536923', 'Fuel Pump', 'D81', 40, 1331.47, '36', '50', 201.41);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('105954557', '5954557', 'Tooth Belt', 'D81', 40, 1116.06, '90', '45', 74.59);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('1055556404', '55556404', 'Belt', 'D81', 40, 64.86, '36', '50', 5.11);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('1093185051', '93185051', 'Belt', 'D81', 40, 128.5, '36', '50', 19.16);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('1093185049', '93185049', 'Belt', 'D81', 40, 92.84, '36', '50', 16.78);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('1093185050', '93185050', 'Belt', 'D81', 40, 175.5, '36', '50', 16.62);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('1012795070', '12795070', 'Belt', 'D51', 35, 12.22, '90', '45', 10.22);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('10930600', '930600', 'Seal', 'D51', 35, 41.42, '90', '45', 22.11);

INSERT INTO Part (part_number_with_prefix, part_number, description, discount_sw_code, discount_sw_percent, krona_net, discount_uk_code, discount_uk_percent, sterling_net)
VALUES ('104109088', '4109088', 'Gear', 'D51', 35, 99.45, '90', '45', 38.99);

-- Inserting data into the Supplier table
INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('H001', 'Higher Oak', 'Oak Road, Wrexham Ind Est', 'Wrexham', 'Wrexham', 'LL13 9RG', '01443456123', 'HighOak@hotmail.co.uk', 'Wales');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('N001', 'Nordic Car Company', 'Unit 2, ByFleet Technical Centre', 'ByFleet', 'Surrey', 'KT14 7JL', '01798445566', 'NordicCars@tiscali.co.uk', 'Great Britain');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('S002', 'Swain and Jones', '35-42 East Street', 'Farnham', 'Surrey', 'GU9 7SW', '01798776589', 'French1@hotmail.co.uk', 'Wales');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('U001', 'Ultimate Car Force', 'Unit 4, Burrows Ind Est', 'Shere, Guildford', 'Surrey', 'GU55 9QQ', '01567836425', 'UltimateCars@yahoo.com', 'Great Britain');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('W001', 'Workshop Saab Specialists', '9 Clothier Road', 'Brislington', 'Bristol', 'BS4 5PS', '01792623594', 'TheWorkshop@btconnect.com', 'Great Britain');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('A001', 'Abbot Racing', 'Spinnels Farm, Wix', 'Manningtree', 'Essex', 'CO11 2UJ', '01279641225', 'AbbottRacing@yahoo.co.uk', 'Great Britain');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('A002', 'Autohaus Furst GMBH', 'Berbillger Str 4, 71254 Ditzingen', NULL, NULL, NULL, '004971191893', 'Autohaus@yahoo.de', 'Germany');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('B001', 'Bond Street', 'Kerry House, 108 Vaughan Way', 'Leicester', 'Leicester', 'LE2 6HJ', '01664765533', 'BondStreetSaab@hotmail.co.uk', 'Great Britain');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('O001', 'Otto Olssons Bil AB', 'Box 94, 27322 Tomelilla', NULL, NULL, NULL, '004641778100', 'OttoOlsson@hotmail.se', 'Sweden');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('S003', 'Saab Owners Club', '16 Thistle Nest Close', 'Otley', 'West Yorkshire', 'LS21 2RR', '01552786632', 'SaabOwners@hotmail.com', 'Great Britain');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('F001', 'French and Swedish Car Centre', '32 Merlins Bridge', 'Haverfordwest', 'Pembrokeshire', 'SA61 5SZ', '01437766511', 'FrenchSwedish@hotmail.com', 'Wales');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('M001', 'Merlin Auto Centre', 'Merlins Bridge', 'Haverfordwest', 'Pembrokeshire', 'SA61 4GH', '01437765522', 'MerlinAutoCentre@hotmail.com', 'Wales');

INSERT INTO Supplier (supplier_number, supplier_name, address, town, county, postcode, contact_number, email_address, country)
VALUES ('S001', 'Swedish Parts Centre', 'Unit 4, Chatterly Industrial Estate', 'Stansted', 'Essex', 'CM23 5HJ', '01279563214', 'SwedishParts@btconnect.com', 'Great Britain');

SELECT * FROM Supplier;


-- Inserting data into the Warehouse table
INSERT INTO Warehouse (warehouse_id, address, town, county, postcode, contact_number)
VALUES ('Steve Haverfordwest', 'Riverview, Spittal', 'Haverfordwest', 'Pembrokeshire', 'SA62 3BA', '01437 123456');
INSERT INTO Warehouse (warehouse_id, address, town, county, postcode, contact_number)
VALUES ('Peter Essex', 'Little Mays', 'Dunmow', 'Essex', 'CM23 5TT', '01371 870000');
SELECT * FROM Warehouse;


-- Inserting data into the Bin table
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A2L', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A2T', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A2M', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A1L', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A1M', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A1T', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A15M', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A15T', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A15L', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A9L', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A9M', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A9T', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A4L', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A4M', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A4T', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A5T', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A5M', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A5L', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A6L', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A6M', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('A6T', 'Steve Haverfordwest');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O137', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O134', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O138', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O133', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O129', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O128', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O127', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O126', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O124', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O121', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O120', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O119', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O118', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O117', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O114', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O113', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('O112', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('N517', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('N516', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('N515', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('N514', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('N513', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('N512', 'Peter Essex');
INSERT INTO Bin (bin_number, warehouse_id)
VALUES ('N511', 'Peter Essex');
SELECT * FROM Bin;


-- Inserting data into the Location table
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('104531331', 'O137', 25);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('104531331', 'A1M', 20);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('105112495', 'O133', 50);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('105112495', 'A1T', 50);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('104543518', 'A1L', 25);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('104543518', 'O134', 35);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('104246112', 'O133', 135);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('1055557379', 'O129', 5);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('109178336', 'O128', 2);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('105450192', 'A2L', 12);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('104411997', 'A2L', 15);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('104411997', 'O126', 0);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('107585086', 'A5T', 0);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('108373078', 'A5M', 0);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('109129669', 'A9M', 1);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('10930600', 'O120', 1);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('109522822', 'O119', 9);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('1012795070', 'O118', 200);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('104109088', 'O117', 20);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('104161162', 'A1L', 126);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('107522733', 'A1M', 26);
INSERT INTO Location (part_number_with_prefix, bin_number, quantity)
VALUES ('107536923', 'A15M', 16);
SELECT * FROM Location;


-- Inserting data into the Invoice table
INSERT INTO Invoice (invoice_number, idate, vat_total, total_value, supplier_number)
VALUES ('100001', TO_DATE('01-NOV-23', 'DD-MON-YY'), 1.42, 8.1, 'N001');
INSERT INTO Invoice (invoice_number, idate, vat_total, total_value, supplier_number)
VALUES ('100002', TO_DATE('01-NOV-23', 'DD-MON-YY'), 12.39, 70.77, 'S001');
INSERT INTO Invoice (invoice_number, idate, vat_total, total_value, supplier_number)
VALUES ('100003', TO_DATE('02-NOV-23', 'DD-MON-YY'), 33.49, 144.79, 'N001');
INSERT INTO Invoice (invoice_number, idate, vat_total, total_value, supplier_number)
VALUES ('100004', TO_DATE('02-NOV-23', 'DD-MON-YY'), 14.26, 351.49, 'O001');
INSERT INTO Invoice (invoice_number, idate, vat_total, total_value, supplier_number)
VALUES ('100005', TO_DATE('03-NOV-23', 'DD-MON-YY'), 192.48, 1099.87, 'O001');
INSERT INTO Invoice (invoice_number, idate, vat_total, total_value, supplier_number)
VALUES ('100006', TO_DATE('03-NOV-23', 'DD-MON-YY'), 35.25, 201.41, 'O001');
INSERT INTO Invoice (invoice_number, idate, vat_total, total_value, supplier_number)
VALUES ('100007', TO_DATE('04-NOV-23', 'DD-MON-YY'), 25.79, 149.22, 'O001');
INSERT INTO Invoice (invoice_number, idate, vat_total, total_value, supplier_number)
VALUES ('100008', TO_DATE('11-OCT-23', 'DD-MON-YY'), 1.42, 8.1, 'N001');
INSERT INTO Invoice (invoice_number, idate, vat_total, total_value, supplier_number)
VALUES ('100009', TO_DATE('10-OCT-23', 'DD-MON-YY'), 1.42, 8.1, 'N001');
INSERT INTO Invoice (invoice_number, idate, vat_total, total_value, supplier_number)
VALUES ('100010', TO_DATE('11-OCT-23', 'DD-MON-YY'), 12.39, 70.77, 'S001');
SELECT * FROM Invoice;


-- Inserting data into the InvoiceDetail table
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100001', '104531331', 2, 7.36, 1.29);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100001', '104246112', 1, 0.74, 0.13);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100002', '1055557379', 1, 12.62, 2.21);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100002', '109178336', 1, 12.29, 2.15);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100002', '107585086', 1, 43.93, 7.47);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100002', '108373078', 2, 1.93, 0.23);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100003', '1055556404', 2, 10.22, 1.79);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100003', '107522733', 4, 117.32, 20.53);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100003', '1093185049', 1, 16.78, 2.94);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100003', '1012795070', 100, 47, 8.23);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100004', '1093185050', 1, 16.62, 2.91);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100004', '109178336', 3, 36.87, 6.45);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100004', '1012795070', 10, 4.7, 0.82);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100004', '107522733', 10, 293.3, 4.08);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100006', '107536923', 1, 201.41, 35.25);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100007', '108373078', 1, 1.93, 0.23);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100007', '107585086', 1, 43.93, 7.47);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100007', '105450192', 2, 103.36, 18.09);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100005', '109129669', 1, 1099.87, 192.48);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100008', '104531331', 2, 7.36, 1.29);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100008', '104246112', 1, 0.74, 0.13);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100009', '104531331', 2, 7.36, 1.29);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100009', '104246112', 1, 0.74, 0.13);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100010', '1055557379', 1, 12.62, 2.21);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100010', '109178336', 1, 12.29, 2.15);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100010', '107585086', 1, 43.93, 7.47);
INSERT INTO InvoiceDetail (invoice_number, part_number_with_prefix, quantity, net_price, net_vat)
VALUES ('100010', '108373078', 2, 1.93, 0.23);
SELECT * FROM InvoiceDetail;



--Query#1: Create a View for Telephone List
CREATE VIEW SupplierTelephoneList AS
SELECT supplier_name || ': ' || contact_number AS telephone_entry
FROM Supplier
ORDER BY supplier_name ASC;
-- Query the Supplier Telephone List View
SELECT * FROM SupplierTelephoneList;



-- Query#2: to Identify Invoices Over £200
SELECT *
FROM Invoice
WHERE total_value > 200
ORDER BY total_value DESC;



-- Query#3: to Select a Particular Invoice
ACCEPT user_input_invoice_number CHAR PROMPT 'Enter Invoice Number: '
SELECT *
FROM Invoice
WHERE invoice_number = '&user_input_invoice_number';


-- Query#4: List of parts for both warehouses
SELECT l.bin_number,
       l.quantity,
       w.warehouse_id,
       p.part_number_with_prefix,
       p.part_number,
       p.description,
       p.discount_sw_code,
       p.discount_sw_percent,
       p.krona_net,
       p.discount_uk_code,
       p.discount_uk_percent,
       p.sterling_net
FROM Location l
JOIN Bin b ON l.bin_number = b.bin_number
JOIN Warehouse w ON b.warehouse_id = w.warehouse_id
JOIN Part p ON l.part_number_with_prefix = p.part_number_with_prefix
ORDER BY w.warehouse_id ASC, p.part_number_with_prefix ASC;


-- Query #5: List of parts and their stock values in Haverfordwest warehouse
SELECT l.part_number_with_prefix,
       p.description,
       l.quantity,
       p.sterling_net AS unit_price,
       l.quantity * p.sterling_net AS stock_value
FROM Location l
JOIN Bin b ON l.bin_number = b.bin_number
JOIN Warehouse w ON b.warehouse_id = w.warehouse_id
JOIN Part p ON l.part_number_with_prefix = p.part_number_with_prefix
WHERE w.warehouse_id = 'Steve Haverfordwest'
ORDER BY l.part_number_with_prefix ASC;

--Query#6
-- Create a view from Query #5
CREATE OR REPLACE VIEW HaverfordwestStockView AS
SELECT l.part_number_with_prefix,
       p.description,
       l.quantity,
       p.sterling_net AS unit_price,
       l.quantity * p.sterling_net AS stock_value
FROM Location l
JOIN Bin b ON l.bin_number = b.bin_number
JOIN Warehouse w ON b.warehouse_id = w.warehouse_id
JOIN Part p ON l.part_number_with_prefix = p.part_number_with_prefix
WHERE w.warehouse_id = 'Steve Haverfordwest';
-- Calculate the total value of all stock in Haverfordwest warehouse
CREATE OR REPLACE VIEW HaverfordwestTotalStockValue AS
SELECT SUM(stock_value) AS total_stock_value
FROM HaverfordwestStockView;
-- Query to get the total stock value for Haverfordwest warehouse
SELECT * FROM HaverfordwestTotalStockValue;


--Query#7
SELECT p.part_number_with_prefix,
       p.description
FROM Part p
WHERE NOT EXISTS (
    SELECT 1
    FROM Location l
    WHERE l.part_number_with_prefix = p.part_number_with_prefix
      AND l.quantity > 0
      AND l.bin_number IS NOT NULL
);



--Query#8
CREATE VIEW AvailableParts AS
SELECT part_number_with_prefix
FROM Location
WHERE quantity > 0 AND bin_number IS NOT NULL;
SELECT p.part_number_with_prefix,
       p.description
FROM Part p
WHERE EXISTS (
    SELECT 1
    FROM AvailableParts ap
    WHERE ap.part_number_with_prefix = p.part_number_with_prefix
);
SELECT p.part_number_with_prefix,
       p.description
FROM Part p
WHERE EXISTS (
    SELECT 2
    FROM AvailableParts ap
    WHERE ap.part_number_with_prefix = p.part_number_with_prefix
);

--Query#9
SELECT 
    p.part_number_with_prefix,
    p.sterling_net AS krona_net_in_sterling,
    ROUND((p.sterling_net * 13 / 100), 2) AS converted_to_sterling,
    CASE
        WHEN ROUND((p.sterling_net * 13 / 100), 2) < p.sterling_net THEN 'Cheaper in Sterling'
        WHEN ROUND((p.sterling_net * 13 / 100), 2) > p.sterling_net THEN 'Cheaper in Krona'
        ELSE 'Equal in Both Currencies'
    END AS cheaper_currency
FROM 
    Part p
INNER JOIN 
    Supplier s ON p.discount_sw_code = s.supplier_number
WHERE 
    s.country = 'Sweden';
    
SELECT part_number_with_prefix, sterling_net, ROUND(krona_net * (13/100), 2) AS converted_sterling
FROM Part
WHERE ROUND(krona_net * (13/100), 2) < sterling_net;
    
--Query#10
UPDATE Part
SET sterling_net = ROUND(sterling_net * 1.05, 2);
SELECT part_number_with_prefix, sterling_net, ROUND(sterling_net * 1.05, 2) AS new_price
FROM Part
ORDER BY new_price;

