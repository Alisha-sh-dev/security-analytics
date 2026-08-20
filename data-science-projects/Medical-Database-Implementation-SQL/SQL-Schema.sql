-- Create Tables
CREATE TABLE speciality (
  speciality_id NUMBER PRIMARY KEY,
  name VARCHAR2(255) NOT NULL
);

CREATE TABLE doctor (
  doctor_id NUMBER PRIMARY KEY,
  name VARCHAR2(255) NOT NULL,
  phone_number VARCHAR2(20) NOT NULL,
  speciality_id NUMBER DEFAULT NULL,
  CONSTRAINT doctor_fk1 FOREIGN KEY (speciality_id) REFERENCES speciality(speciality_id)
);

CREATE TABLE patient (
  patient_id NUMBER PRIMARY KEY,
  name VARCHAR2(255) NOT NULL,
  dob DATE NOT NULL,
  gender VARCHAR2(6) NOT NULL,
  phone_number VARCHAR2(20) NOT NULL,
  address VARCHAR2(255) NOT NULL,
  state_code VARCHAR2(5) DEFAULT NULL
);

CREATE TABLE appointment (
  appointment_id NUMBER PRIMARY KEY,
  patient_id NUMBER NOT NULL,
  doctor_id NUMBER NOT NULL,
  appointment_date TIMESTAMP NOT NULL,
  notes CLOB,
  status VARCHAR2(20) DEFAULT NULL,
  CONSTRAINT appointment_fk1 FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
  CONSTRAINT appointment_fk2 FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id)
);

CREATE TABLE medication (
  medication_id NUMBER PRIMARY KEY,
  name VARCHAR2(255) NOT NULL,
  manufacturer VARCHAR2(255) NOT NULL,
  dosage_form VARCHAR2(50) NOT NULL,
  strength VARCHAR2(50) NOT NULL,
  description CLOB
);

CREATE TABLE drug (drug_id NUMBER PRIMARY KEY);

CREATE TABLE prescription (
    prescription_id NUMBER,
    patient_id NUMBER,
    drug_id NUMBER,
    PRIMARY KEY (prescription_id),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (drug_id) REFERENCES drug(drug_id)
);


GRANT INSERT ON appointment TO mis602_ass2;


-- Patient Table
INSERT INTO patient VALUES (1,'John Smith',TO_DATE('1985-03-12', 'YYYY-MM-DD'),'male','123-456-7890','123 Main St','WA');
INSERT INTO patient VALUES (2, 'Jane Doe', TO_DATE('1992-07-04', 'YYYY-MM-DD'), 'female', '555-555-1212', '456 Oak St', 'NSW');
INSERT INTO patient VALUES (3, 'Robert Johnson', TO_DATE('1976-10-22', 'YYYY-MM-DD'), 'male', '555-123-4567', '789 Elm St', 'NT');
INSERT INTO patient VALUES (4, 'Samantha Garcia', TO_DATE('2001-02-08', 'YYYY-MM-DD'), 'female', '555-867-5309', '321 Pine St', 'VIC');
INSERT INTO patient VALUES (5, 'AnnaLee', TO_DATE('1969-12-01', 'YYYY-MM-DD'), 'male', '555-987-6543', '555 Maple Ave', 'WA');
INSERT INTO patient VALUES (6, 'Amanda Chen', TO_DATE('1987-05-30', 'YYYY-MM-DD'), 'female', '555-555-5555', '444 Cherry Ln', 'VIC');
INSERT INTO patient VALUES (7, 'Michael Rodriguez', TO_DATE('1995-11-17', 'YYYY-MM-DD'), 'male', '555-111-2222', '777 Walnut St', 'NT');
INSERT INTO patient VALUES (8, 'Emily Kim', TO_DATE('2000-04-02', 'YYYY-MM-DD'), 'female', '555-222-3333', '888 Spruce St', 'NSW');
INSERT INTO patient VALUES (9, 'Daniel Brown', TO_DATE('1980-08-15', 'YYYY-MM-DD'), 'male', '555-444-5555', '999 Oak St', 'NSW');
INSERT INTO patient VALUES (10, 'Megan Davis', TO_DATE('1990-01-20', 'YYYY-MM-DD'), 'female', '555-123-4567', '111 Pine St', 'VIC');
INSERT INTO patient VALUES (11, 'John Doe', TO_DATE('1990-06-15', 'YYYY-MM-DD'), 'male', '123-456-7890', '123 Main St', 'QLD');
INSERT INTO patient VALUES (12, 'Jane Smith', TO_DATE('1985-09-10', 'YYYY-MM-DD'), 'female', '555-555-5555', '456 Second St', 'NT');
INSERT INTO patient VALUES (13, 'Mike Thompson', TO_DATE('1978-02-03', 'YYYY-MM-DD'), 'male', '222-222-2222', '789 Third St', 'NT');
INSERT INTO patient VALUES (14, 'Sarah Lee', TO_DATE('1995-12-25', 'YYYY-MM-DD'), 'female', '333-333-3333', '321 Fourth St', 'NSW');
INSERT INTO patient VALUES (15, 'Alex Rodriguez', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'male', '444-444-4444', '567 Fifth St', 'NT');
INSERT INTO patient VALUES (16, 'Megan Gold', TO_DATE('1992-11-30', 'YYYY-MM-DD'), 'female', '777-777-7777', '246 Sixth St', 'VIC');
INSERT INTO patient VALUES (17, 'Tom Smith', TO_DATE('1980-08-18', 'YYYY-MM-DD'), 'male', '666-666-6666', '369 Seventh St', 'QLD');
INSERT INTO patient VALUES (18, 'Emily Brown', TO_DATE('1998-05-20', 'YYYY-MM-DD'), 'female', '888-888-8888', '753 Eighth St', 'NT');
INSERT INTO patient VALUES (19, 'PortiaLee', TO_DATE('1975-03-12', 'YYYY-MM-DD'), 'male', '999-999-9999', '951 Ninth St', 'QLD');
INSERT INTO patient VALUES (20, 'Samantha Garden', TO_DATE('1989-07-04', 'YYYY-MM-DD'), 'female', '111-111-1111', '147 Tenth St', 'VIC');
INSERT INTO patient VALUES (21, 'Paula Jones', TO_DATE('2005-04-12', 'YYYY-MM-DD'), 'female', '222-222-2222', '258 Eleventh St', 'QLD');
INSERT INTO patient VALUES (22, 'Jacob Thompson', TO_DATE('1983-01-31', 'YYYY-MM-DD'), 'male', '333-333-3333', '369 Twelfth St', 'VIC');
INSERT INTO patient VALUES (23, 'Ashley Davis', TO_DATE('1996-09-18', 'YYYY-MM-DD'), 'female', '444-444-4444', '753 Thirteenth St', 'QLD');
INSERT INTO patient VALUES (24, 'Oliver White', TO_DATE('1977-06-22', 'YYYY-MM-DD'), 'male', '555-555-5555', '951 Fourteenth St', 'NT');
INSERT INTO patient VALUES (25, 'Grace Martin', TO_DATE('2002-12-05', 'YYYY-MM-DD'), 'female', '666-666-6666', '147 Fifteenth St', 'WA');
INSERT INTO patient VALUES (26, 'SarahLee', TO_DATE('1986-08-02', 'YYYY-MM-DD'), 'male', '777-777-7777', '258 Sixteenth St', 'QLD');
INSERT INTO patient VALUES (27, 'John Hue', TO_DATE('1990-06-15', 'YYYY-MM-DD'), 'male', '123-456-7890', '123 Main St', 'NSW');
INSERT INTO patient VALUES (28, 'Jane Dave', TO_DATE('1985-09-10', 'YYYY-MM-DD'), 'female', '555-555-5555', '456 Second St', 'VIC');
INSERT INTO patient VALUES (29, 'Mike Johnson', TO_DATE('1978-02-03', 'YYYY-MM-DD'), 'male', '222-222-2222', '789 Third St', 'VIC');
INSERT INTO patient VALUES (30, 'Sarah Brown', TO_DATE('1995-12-25', 'YYYY-MM-DD'), 'female', '333-333-3333', '321 Fourth St', 'NSW');
INSERT INTO patient VALUES (31, 'Alex Chen', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'male', '444-444-4444', '567 Fifth St', 'VIC');
INSERT INTO patient VALUES (32, 'Megan Davis', TO_DATE('1992-11-30', 'YYYY-MM-DD'), 'female', '777-777-7777', '246 Sixth St', 'VIC');
INSERT INTO patient VALUES (33, 'Tom Hayland', TO_DATE('1980-08-18', 'YYYY-MM-DD'), 'male', '666-666-6666', '369 Seventh St', 'QLD');
INSERT INTO patient VALUES (34, 'Emily Brown', TO_DATE('1998-05-20', 'YYYY-MM-DD'), 'female', '888-888-8888', '753 Eighth St', 'NSW');
INSERT INTO patient VALUES (35, 'Civteang Lee', TO_DATE('1975-03-12', 'YYYY-MM-DD'), 'male', '999-999-9999', '951 Ninth St', 'QLD');
INSERT INTO patient VALUES (36, 'Samantha Green', TO_DATE('1989-07-04', 'YYYY-MM-DD'), 'female', '111-111-1111', '147 Tenth St', 'QLD');
INSERT INTO patient VALUES (37, 'Paula Rodriguez', TO_DATE('2005-04-12', 'YYYY-MM-DD'), 'female', '222-222-2222', '258 Eleventh St', 'NSW');
INSERT INTO patient VALUES (38, 'Adam Thompson', TO_DATE('1983-01-31', 'YYYY-MM-DD'), 'male', '333-333-3333', '369 Twelfth St', 'NSW');
INSERT INTO patient VALUES (39, 'Anne Davis', TO_DATE('1996-09-18', 'YYYY-MM-DD'), 'female', '444-444-4444', '753 Thirteenth St', 'VIC');
INSERT INTO patient VALUES (40, 'Jameela White', TO_DATE('1977-06-22', 'YYYY-MM-DD'), 'male', '555-555-5555', '951 Fourteenth St', 'WA');
INSERT INTO patient VALUES (41, 'Grace Martin', TO_DATE('2002-12-05', 'YYYY-MM-DD'), 'female', '666-666-6666', '147 Fifteenth St', 'NT');
INSERT INTO patient VALUES (42, 'Andrew Lee', TO_DATE('1986-08-02', 'YYYY-MM-DD'), 'male', '777-777-7777', '258 Sixteenth St', 'QLD');
INSERT INTO patient VALUES (43, 'Alice Johnson', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'female', '0412 345 678', '123 Main St', 'QLD');
INSERT INTO patient VALUES (44, 'Bob Smith', TO_DATE('1985-05-15', 'YYYY-MM-DD'), 'male', '0413 456 789', '456 Elm St', 'WA');
INSERT INTO patient VALUES (45, 'Catherine Davis', TO_DATE('2000-10-20', 'YYYY-MM-DD'), 'female', '0421 234 567', '789 Oak Ave', 'VIC');
INSERT INTO patient VALUES (46, 'David Williams', TO_DATE('1978-03-08', 'YYYY-MM-DD'), 'male', '0432 345 678', '567 Pine Rd', 'NT');
INSERT INTO patient VALUES (47, 'Emma Miller', TO_DATE('1995-07-12', 'YYYY-MM-DD'), 'female', '0434 567 890', '789 Maple Ln', 'NSW');
INSERT INTO patient VALUES (48, 'Frank Brown', TO_DATE('1982-09-25', 'YYYY-MM-DD'), 'male', '0415 678 901', '123 Elm St', 'TAS');
INSERT INTO patient VALUES (49, 'Grace Taylor', TO_DATE('1989-12-30', 'YYYY-MM-DD'), 'female', '0423 456 789', '456 Oak Ave', 'QLD');
INSERT INTO patient VALUES (50, 'Henry Jackson', TO_DATE('2001-02-04', 'YYYY-MM-DD'), 'male', '0435 678 901', '789 Pine Rd', 'WA');
INSERT INTO patient VALUES (51, 'Isabella Martinez', TO_DATE('1977-04-18', 'YYYY-MM-DD'), 'female', '0416 789 012', '567 Birch Dr', 'VIC');
INSERT INTO patient VALUES (52, 'Jacob Wilson', TO_DATE('1992-06-22', 'YYYY-MM-DD'), 'male', '0425 678 901', '123 Cedar St', 'NT');
INSERT INTO patient VALUES (53, 'Katherine Thompson', TO_DATE('1988-08-27', 'YYYY-MM-DD'), 'female', '0437 890 123', '456 Maple Ln', 'NSW');
INSERT INTO patient VALUES (54, 'Liam Anderson', TO_DATE('1994-10-02', 'YYYY-MM-DD'), 'male', '0418 901 234', '789 Elm St', 'TAS');
INSERT INTO patient VALUES (55, 'Mia Martinez', TO_DATE('1980-12-06', 'YYYY-MM-DD'), 'female', '0427 012 345', '567 Oak Ave', 'QLD');
INSERT INTO patient VALUES (56, 'Noah Harris', TO_DATE('1976-02-10', 'YYYY-MM-DD'), 'male', '0439 012 345', '789 Pine Rd', 'WA');
INSERT INTO patient VALUES (57, 'Olivia Davis', TO_DATE('1991-04-14', 'YYYY-MM-DD'), 'female', '0410 123 456', '123 Birch Dr', 'VIC');
INSERT INTO patient VALUES (58, 'Patrick Clark', TO_DATE('1987-06-18', 'YYYY-MM-DD'), 'male', '0422 345 678', '456 Cedar St', 'NT');
INSERT INTO patient VALUES (59, 'Quinn Lewis', TO_DATE('1984-08-23', 'YYYY-MM-DD'), 'male', '0411 234 567', '789 Maple Ln', 'NSW');
INSERT INTO patient VALUES (60, 'Ruby Nelson', TO_DATE('1999-10-28', 'YYYY-MM-DD'), 'female', '0424 567 890', '567 Elm St', 'TAS');
INSERT INTO patient VALUES (61, 'Samuel Hall', TO_DATE('1983-12-02', 'YYYY-MM-DD'), 'male', '0413 678 901', '789 Oak Ave', 'QLD');
INSERT INTO patient VALUES (62, 'Taylor Garcia', TO_DATE('1979-02-06', 'YYYY-MM-DD'), 'female', '0426 789 012', '567 Pine Rd', 'WA');
INSERT INTO patient VALUES (63, 'Uma Wright', TO_DATE('1996-04-10', 'YYYY-MM-DD'), 'female', '0415 890 123', '123 Maple Ln', 'VIC');
INSERT INTO patient VALUES (64, 'Vincent Young', TO_DATE('1981-06-14', 'YYYY-MM-DD'), 'male', '0428 901 234', '456 Elm St', 'NT');
INSERT INTO patient VALUES (65, 'Willow Martinez', TO_DATE('1986-08-18', 'YYYY-MM-DD'), 'female', '0417 012 345', '789 Oak Ave', 'NSW');
INSERT INTO patient VALUES (66, 'Xavier Scott', TO_DATE('2002-10-22', 'YYYY-MM-DD'), 'male', '0430 123 456', '567 Pine Rd', 'TAS');
INSERT INTO patient VALUES (67, 'Yasmine Adams', TO_DATE('1978-12-27', 'YYYY-MM-DD'), 'female', '0429 234 567', '123 Maple Ln', 'QLD');
INSERT INTO patient VALUES (68, 'Zachary Perez', TO_DATE('1993-02-28', 'YYYY-MM-DD'), 'male', '0432 345 678', '456 Elm St', 'WA');
INSERT INTO patient VALUES (69, 'Amelia Green', TO_DATE('1989-04-04', 'YYYY-MM-DD'), 'female', '0433 456 789', '789 Oak Ave', 'VIC');
INSERT INTO patient VALUES (70, 'Benjamin King', TO_DATE('1985-06-08', 'YYYY-MM-DD'), 'male', '0414 567 890', '567 Pine Rd', 'NT');
INSERT INTO patient VALUES (71, 'Chloe Martinez', TO_DATE('2000-08-12', 'YYYY-MM-DD'), 'female', '0420 678 901', '123 Cedar St', 'NSW');
INSERT INTO patient VALUES (72, 'Daniel Allen', TO_DATE('1978-10-16', 'YYYY-MM-DD'), 'male', '0431 789 012', '456 Elm St', 'TAS');
INSERT INTO patient VALUES (73, 'Ella Turner', TO_DATE('1987-12-20', 'YYYY-MM-DD'), 'female', '0416 890 123', '789 Birch Dr', 'QLD');
INSERT INTO patient VALUES (74, 'Finn Lewis', TO_DATE('1994-02-24', 'YYYY-MM-DD'), 'male', '0423 901 234', '123 Maple Ln', 'WA');
INSERT INTO patient VALUES (75, 'Grace Young', TO_DATE('1980-04-29', 'YYYY-MM-DD'), 'female', '0435 012 345', '456 Elm St', 'VIC');
INSERT INTO patient VALUES (76, 'Henry Davis', TO_DATE('1997-07-03', 'YYYY-MM-DD'), 'male', '0417 123 456', '789 Oak Ave', 'NT');
INSERT INTO patient VALUES (77, 'Isabella Adams', TO_DATE('1983-09-07', 'YYYY-MM-DD'), 'female', '0429 234 567', '567 Pine Rd', 'NSW');
INSERT INTO patient VALUES (78, 'Jack Johnson', TO_DATE('1989-11-11', 'YYYY-MM-DD'), 'male', '0430 345 678', '123 Elm St', 'TAS');
INSERT INTO patient VALUES (79, 'Kate Brown', TO_DATE('2004-01-15', 'YYYY-MM-DD'), 'female', '0412 456 789', '456 Oak Ave', 'QLD');
INSERT INTO patient VALUES (80, 'Liam Smith', TO_DATE('1976-03-20', 'YYYY-MM-DD'), 'male', '0423 567 890', '789 Maple Ln', 'WA');
INSERT INTO patient VALUES (81, 'Mia Davis', TO_DATE('1991-05-25', 'YYYY-MM-DD'), 'female', '0434 678 901', '123 Cedar St', 'VIC');
INSERT INTO patient VALUES (82, 'Noah Martinez', TO_DATE('1988-07-30', 'YYYY-MM-DD'), 'male', '0415 789 012', '456 Elm St', 'NT');
INSERT INTO patient VALUES (83, 'Olivia Wilson', TO_DATE('1996-09-01', 'YYYY-MM-DD'), 'female', '0416 890 123', '123 Birch Dr', 'NSW');
INSERT INTO patient VALUES (84, 'Patrick Miller', TO_DATE('1982-11-06', 'YYYY-MM-DD'), 'male', '0423 901 234', '456 Cedar St', 'TAS');
INSERT INTO patient VALUES (85, 'Quinn Taylor', TO_DATE('1998-01-10', 'YYYY-MM-DD'), 'male', '0435 012 345', '789 Elm St', 'QLD');
INSERT INTO patient VALUES (86, 'Ruby Clark', TO_DATE('1987-03-15', 'YYYY-MM-DD'), 'female', '0417 123 456', '567 Oak Ave', 'WA');
INSERT INTO patient VALUES (87, 'Samuel Johnson', TO_DATE('1975-05-20', 'YYYY-MM-DD'), 'male', '0429 234 567', '123 Pine Rd', 'VIC');
INSERT INTO patient VALUES (88, 'Taylor Martinez', TO_DATE('1992-07-25', 'YYYY-MM-DD'), 'female', '0430 345 678', '456 Birch Dr', 'NT');
INSERT INTO patient VALUES (89, 'Uma Harris', TO_DATE('1989-10-29', 'YYYY-MM-DD'), 'female', '0411 456 789', '789 Cedar St', 'NSW');
INSERT INTO patient VALUES (90, 'Vincent Davis', TO_DATE('2003-01-02', 'YYYY-MM-DD'), 'male', '0422 567 890', '123 Elm St', 'TAS');
INSERT INTO patient VALUES (91, 'Willow Thompson', TO_DATE('1980-03-08', 'YYYY-MM-DD'), 'female', '0433 678 901', '456 Maple Ln', 'QLD');
INSERT INTO patient VALUES (92, 'Xavier Adams', TO_DATE('1995-05-13', 'YYYY-MM-DD'), 'male', '0414 789 012', '789 Pine Rd', 'WA');
INSERT INTO patient VALUES (93, 'Yasmine Johnson', TO_DATE('1977-07-18', 'YYYY-MM-DD'), 'female', '0425 890 123', '567 Cedar St', 'VIC');
INSERT INTO patient VALUES (94, 'Zachary Wilson', TO_DATE('1984-09-23', 'YYYY-MM-DD'), 'male', '0436 901 234', '123 Elm St', 'NT');
INSERT INTO patient VALUES (95, 'Amelia Smith', TO_DATE('1991-11-27', 'YYYY-MM-DD'), 'female', '0417 012 345', '456 Birch Dr', 'NSW');
INSERT INTO patient VALUES (96, 'Benjamin Miller', TO_DATE('1986-02-01', 'YYYY-MM-DD'), 'male', '0428 123 456', '789 Oak Ave', 'TAS');
INSERT INTO patient VALUES (97, 'Chloe Clark', TO_DATE('1979-04-07', 'YYYY-MM-DD'), 'female', '0439 234 567', '567 Pine Rd', 'QLD');
INSERT INTO patient VALUES (98, 'Daniel Adams', TO_DATE('1994-06-12', 'YYYY-MM-DD'), 'male', '0410 345 678', '123 Cedar St', 'WA');
INSERT INTO patient VALUES (99, 'Ella Harris', TO_DATE('1981-08-16', 'YYYY-MM-DD'), 'female', '0421 456 789', '456 Elm St', 'VIC');
INSERT INTO patient VALUES (100, 'Finn Miller', TO_DATE('2002-10-20', 'YYYY-MM-DD'), 'male', '0432 567 890', '789 Oak Ave', 'NT');
INSERT INTO patient VALUES (101, 'Grace Wilson', TO_DATE('1988-12-24', 'YYYY-MM-DD'), 'female', '0413 678 901', '567 Pine Rd', 'NSW');
INSERT INTO patient VALUES (102, 'Henry Thompson', TO_DATE('1993-02-28', 'YYYY-MM-DD'), 'male', '0424 789 012', '123 Birch Dr', 'TAS');
INSERT INTO patient VALUES (103, 'Isabella Brown', TO_DATE('1976-05-03', 'YYYY-MM-DD'), 'female', '0435 901 234', '456 Cedar St', 'QLD');

-- Insert Data into medication table
INSERT INTO medication VALUES (1, 'Ibuprofen', 'ABC Pharma', 'Tablet', '200mg', 'Pain reliever');
INSERT INTO medication VALUES (2,'Amoxicillin','XYZ Pharmaceuticals','Capsule','500mg','Antibiotic');
INSERT INTO medication VALUES (3,'Loratadine','MediCo','Tablet','10mg','Antihistamine for allergies');
INSERT INTO medication VALUES (4,'Simvastatin','Pharmalife','Tablet','20mg','Cholesterol-lowering medication');
INSERT INTO medication VALUES (5,'Omeprazole','HealthMeds','Capsule','40mg','Acid reflux treatment');
INSERT INTO medication VALUES (6,'Metformin','Wellness Drugs','Tablet','1000mg','Type 2 diabetes medication');
INSERT INTO medication VALUES (7,'Albuterol','BreathEasy','Inhaler','100mcg','Bronchodilator for asthma');
INSERT INTO medication VALUES (8,'Aspirin','HealPharma','Tablet','81mg','Blood thinner');
INSERT INTO medication VALUES (9,'Cetirizine','AllergyCare','Tablet','10mg','Antihistamine for allergies');
INSERT INTO medication VALUES (10,'Losartan','HeartGuard','Tablet','50mg','Blood pressure medication');
INSERT INTO medication VALUES (11,'Metoprolol','CardioHealth','Tablet','25mg','Beta blocker for hypertension');
INSERT INTO medication VALUES (12,'Levothyroxine','ThyroidWell','Tablet','100mcg','Thyroid hormone replacement');
INSERT INTO medication VALUES (13,'Atorvastatin','CholesterolControl','Tablet','40mg','Cholesterol-lowering medication');
INSERT INTO medication VALUES (14,'Prednisone','ReliefMeds','Tablet','10mg','Anti-inflammatory');
INSERT INTO medication VALUES (15,'Fluoxetine','MindBalance','Capsule','20mg','Antidepressant');
INSERT INTO medication VALUES (16,'Warfarin','BloodCare','Tablet','5mg','Anticoagulant');
INSERT INTO medication VALUES (17,'Diphenhydramine','SleepEase','Tablet','25mg','Sleep aid');
INSERT INTO medication VALUES (18,'Furosemide','KidneyCare','Tablet','40mg','Diuretic for fluid retention');
INSERT INTO medication VALUES (19,'Meloxicam','PainRelief','Tablet','15mg','Pain and inflammation relief');
INSERT INTO medication VALUES (20,'Hydrochlorothiazide','WaterBalance','Tablet','12.5mg','Diuretic for hypertension'); 
INSERT INTO medication VALUES (21,'Ciprofloxacin','MicroMed','Tablet','500mg','Antibiotic for infections');
INSERT INTO medication VALUES (22,'Paracetamol','ReliefMeds','Tablet','500mg','Pain and fever reliever');
INSERT INTO medication VALUES (23,'Esomeprazole','GastroGuard','Capsule','20mg','Proton pump inhibitor');
INSERT INTO medication VALUES (24,'Prednisolone','InflammationControl','Tablet','5mg','Anti-inflammatory');
INSERT INTO medication VALUES (25,'Montelukast','AsthmaCare','Tablet','10mg','Leukotriene receptor antagonist for asthma');
INSERT INTO medication VALUES (26,'Rosuvastatin','HeartCare','Tablet','10mg','Cholesterol-lowering medication');
INSERT INTO medication VALUES (27,'Cephalexin','MediCure','Capsule','250mg','Antibiotic');
INSERT INTO medication VALUES (28,'Hydrocodone','PainRelief','Tablet','5mg','Pain reliever');
INSERT INTO medication VALUES (29,'Fluticasone','BreatheEasy','Inhaler','50mcg','Corticosteroid inhaler for asthma');
INSERT INTO medication VALUES (30,'Azithromycin','MicroMed','Tablet','250mg','Antibiotic for infections');
INSERT INTO medication VALUES (31,'Duloxetine','MindBalance','Capsule','30mg','Antidepressant');
INSERT INTO medication VALUES (32,'Bupropion','HappinessRx','Tablet','150mg','Antidepressant and smoking cessation aid');
INSERT INTO medication VALUES (33,'Amlodipine','CardioHealth','Tablet','5mg','Calcium channel blocker for hypertension');
INSERT INTO medication VALUES (34,'Lisinopril','HeartGuard','Tablet','10mg','ACE inhibitor for hypertension');
INSERT INTO medication VALUES (35,'Venlafaxine','MoodStabilize','Capsule','75mg','Antidepressant');
INSERT INTO medication VALUES (36,'Celecoxib','JointRelief','Capsule','100mg','Anti-inflammatory for joint pain');
INSERT INTO medication VALUES (37,'Ranitidine','StomachEase','Tablet','150mg','Antacid and H2 blocker');
INSERT INTO medication VALUES (38,'Trazodone','SleepWell','Tablet','50mg','Sleep aid and antidepressant');
INSERT INTO medication VALUES (39,'Escitalopram','EmotionBalance','Tablet','10mg','Antidepressant');
INSERT INTO medication VALUES (40,'Oxycodone','PainRelief','Tablet','10mg','Strong pain reliever');
INSERT INTO medication VALUES (41,'Gabapentin','NeuroCare','Capsule','300mg','Anticonvulsant and neuropathic pain medication');
INSERT INTO medication VALUES (42,'Lorazepam','AnxietyControl','Tablet','2mg','Anti-anxiety medication');
INSERT INTO medication VALUES (43,'Melatonin','SleepAid','Tablet','5mg','Natural sleep aid');
INSERT INTO medication VALUES (44,'Dexamethasone','InflammationControl','Tablet','4mg','Potent anti-inflammatory');
INSERT INTO medication VALUES (45,'Tramadol','PainRelief','Tablet','50mg','Moderate to severe pain relief');
INSERT INTO medication VALUES (46,'Levothyroxine','ThyroidCare','Tablet','50mcg','Thyroid hormone replacement');
INSERT INTO medication VALUES (47,'Metoclopramide','StomachEase','Tablet','10mg','Anti-nausea and digestive aid');
INSERT INTO medication VALUES (48,'Naproxen','PainRelief','Tablet','220mg','Nonsteroidal anti-inflammatory drug');
INSERT INTO medication VALUES (49,'Cetirizine','AllergyControl','Tablet','5mg','Antihistamine for allergies');
INSERT INTO medication VALUES (50,'Diazepam','AnxietyEase','Tablet','10mg','Anti-anxiety medication');
INSERT INTO medication VALUES (51,'Sildenafil','LoveLife','Tablet','50mg','Erectile dysfunction treatment');
INSERT INTO medication VALUES (52,'Fexofenadine','AllergyRelief','Tablet','180mg','Antihistamine for allergies');
INSERT INTO medication VALUES (53,'Sertraline','MoodBalance','Tablet','50mg','Antidepressant');
INSERT INTO medication VALUES (54,'Amitriptyline','MoodStabilize','Tablet','25mg','Antidepressant');
INSERT INTO medication VALUES (55,'Olanzapine','MentalHealth','Tablet','10mg','Antipsychotic medication');
INSERT INTO medication VALUES (56,'Venlafaxine','MindBalance','Capsule','150mg','Antidepressant');
INSERT INTO medication VALUES (57,'Fluconazole','MicroMed','Tablet','150mg','Antifungal medication');
INSERT INTO medication VALUES (58,'Citalopram','EmotionBalance','Tablet','20mg','Antidepressant');
INSERT INTO medication VALUES (59,'Alprazolam','AnxietyRelief','Tablet','0.5mg','Anti-anxiety medication');
INSERT INTO medication VALUES (60,'Hydroxyzine','CalmEase','Tablet','25mg','Antihistamine and anti-anxiety');
INSERT INTO medication VALUES (61,'Risperidone','MentalHealth','Tablet','2mg','Antipsychotic medication');
INSERT INTO medication VALUES (62,'Mirtazapine','MoodStabilize','Tablet','15mg','Antidepressant');
INSERT INTO medication VALUES (63,'Prednisolone','InflammationControl','Tablet','10mg','Anti-inflammatory');
SELECT * FROM medication;

-- Insert Data into appointment table
INSERT INTO appointment VALUES (133, 1, 1, TO_DATE('2023-07-15 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', 'completed');
INSERT INTO appointment VALUES (134, 2, 1, TO_DATE('2023-07-15 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', 'completed');
INSERT INTO appointment VALUES (135, 3, 3, TO_DATE('2023-05-10 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss test results', 'completed');
INSERT INTO appointment VALUES (136, 4, 4, TO_DATE('2023-08-05 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', 'completed');
INSERT INTO appointment VALUES (137, 5, 5, TO_DATE('2023-09-15 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'New patient intake', 'completed');
INSERT INTO appointment VALUES (138, 6, 6, TO_DATE('2023-10-10 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (139, 7, 7, TO_DATE('2023-07-18 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', 'Cancelled');
INSERT INTO appointment VALUES (140, 8, 8, TO_DATE('2023-06-21 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', 'completed');
INSERT INTO appointment VALUES (141, 9, 9, TO_DATE('2023-05-12 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Annual checkup', 'completed');
INSERT INTO appointment VALUES (142, 10, 10, TO_DATE('2023-08-07 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', 'completed');
INSERT INTO appointment VALUES (143, 11, 11, TO_DATE('2023-09-18 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss treatment plan', NULL);
INSERT INTO appointment VALUES (144, 12, 12, TO_DATE('2023-10-12 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', NULL);
INSERT INTO appointment VALUES (145, 13, 13, TO_DATE('2023-07-20 09:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', 'Cancelled');
INSERT INTO appointment VALUES (146, 14, 14, TO_DATE('2023-06-23 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', 'completed');
INSERT INTO appointment VALUES (147, 15, 15, TO_DATE('2023-05-14 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Annual checkup', 'completed');
INSERT INTO appointment VALUES (148, 16, 16, TO_DATE('2023-08-09 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'New patient intake', 'completed');
INSERT INTO appointment VALUES (149, 17, 17, TO_DATE('2023-09-20 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', NULL);
INSERT INTO appointment VALUES (150, 18, 18, TO_DATE('2023-10-14 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss treatment plan', NULL);
INSERT INTO appointment VALUES (151, 19, 19, TO_DATE('2023-07-22 12:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', 'Cancelled');
INSERT INTO appointment VALUES (152, 20, 20, TO_DATE('2023-06-25 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment','completed');
INSERT INTO appointment VALUES (153, 21, 21, TO_DATE('2023-07-28 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup','completed');
INSERT INTO appointment VALUES (154, 22, 22, TO_DATE('2023-08-12 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', 'Cancelled');
INSERT INTO appointment VALUES (155, 23, 23, TO_DATE('2023-09-05 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss test results', 'completed');
INSERT INTO appointment VALUES (156, 24, 24, TO_DATE('2023-10-18 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', NULL);
INSERT INTO appointment VALUES (157, 25, 25, TO_DATE('2023-11-20 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'New patient intake', NULL);
INSERT INTO appointment VALUES (158, 26, 26, TO_DATE('2023-12-01 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (159, 27, 27, TO_DATE('2023-08-02 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', 'Cancelled');
INSERT INTO appointment VALUES (160, 28, 28, TO_DATE('2023-09-10 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', 'completed');
INSERT INTO appointment VALUES (161, 29, 29, TO_DATE('2023-10-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Annual checkup', NULL);
INSERT INTO appointment VALUES (162, 30, 30, TO_DATE('2023-11-08 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (163, 31, 31, TO_DATE('2023-12-20 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss treatment plan', NULL);
INSERT INTO appointment VALUES (164, 32, 32, TO_DATE('2023-09-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', 'completed');
INSERT INTO appointment VALUES (165, 33, 33, TO_DATE('2023-10-10 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', NULL);
INSERT INTO appointment VALUES (166, 34, 34, TO_DATE('2023-11-05 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (167, 35, 35, TO_DATE('2023-12-15 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Annual checkup', NULL);
INSERT INTO appointment VALUES (168, 36, 36, TO_DATE('2023-09-08 16:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'New patient intake', 'completed');
INSERT INTO appointment VALUES (169, 37, 37, TO_DATE('2023-10-18 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', NULL);
INSERT INTO appointment VALUES (170, 38, 38, TO_DATE('2023-11-25 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', NULL);
INSERT INTO appointment VALUES (171, 39, 39, TO_DATE('2023-12-10 12:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (172, 40, 40, TO_DATE('2023-09-12 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss treatment plan', 'completed');
INSERT INTO appointment VALUES (173, 41, 41, TO_DATE('2023-07-28 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', 'completed');
INSERT INTO appointment VALUES (174, 42, 42, TO_DATE('2023-08-12 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', 'Cancelled');
INSERT INTO appointment VALUES (175, 43, 43, TO_DATE('2023-09-05 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss test results', 'completed');
INSERT INTO appointment VALUES (176, 44, 44, TO_DATE('2023-10-18 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', NULL);
INSERT INTO appointment VALUES (177, 45, 45, TO_DATE('2023-11-20 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'New patient intake', NULL);
INSERT INTO appointment VALUES (178, 46, 46, TO_DATE('2023-12-01 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (179, 47, 47, TO_DATE('2023-08-02 08:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', 'completed');
INSERT INTO appointment VALUES (180, 48, 48, TO_DATE('2023-09-10 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', 'completed');
INSERT INTO appointment VALUES (181, 49, 49, TO_DATE('2023-10-15 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Annual checkup', NULL);
INSERT INTO appointment VALUES (182, 50, 1, TO_DATE('2023-11-08 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (183, 51, 2, TO_DATE('2023-12-20 14:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss treatment plan', NULL);
INSERT INTO appointment VALUES (184, 52, 3, TO_DATE('2023-09-01 14:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', 'completed');
INSERT INTO appointment VALUES (185, 53, 4, TO_DATE('2023-10-10 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', NULL);
INSERT INTO appointment VALUES (186, 54, 5, TO_DATE('2023-11-05 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (187, 55, 6, TO_DATE('2023-12-15 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Annual checkup', NULL);
INSERT INTO appointment VALUES (188, 56, 7, TO_DATE('2023-09-08 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'New patient intake', 'completed');
INSERT INTO appointment VALUES (189, 57, 8, TO_DATE('2023-10-18 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', NULL);
INSERT INTO appointment VALUES (190, 58, 9, TO_DATE('2023-11-25 09:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', NULL);
INSERT INTO appointment VALUES (191, 59, 10, TO_DATE('2023-12-10 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (192, 60, 11, TO_DATE('2023-09-12 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss treatment plan', 'completed');
INSERT INTO appointment VALUES (193, 61, 12, TO_DATE('2023-07-28 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', 'completed');
INSERT INTO appointment VALUES (194, 62, 13, TO_DATE('2023-08-12 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', 'Cancelled');
INSERT INTO appointment VALUES (195, 63, 14, TO_DATE('2023-09-05 12:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss test results', 'completed');
INSERT INTO appointment VALUES (196, 64, 15, TO_DATE('2023-10-18 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', NULL);
INSERT INTO appointment VALUES (197, 65, 16, TO_DATE('2023-11-20 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'New patient intake', NULL);
INSERT INTO appointment VALUES (198, 66, 17, TO_DATE('2023-12-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (199, 67, 18, TO_DATE('2023-08-02 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', 'completed');
INSERT INTO appointment VALUES (200, 68, 19, TO_DATE('2023-09-10 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', 'completed');
INSERT INTO appointment VALUES (201, 69, 20, TO_DATE('2023-10-15 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Annual checkup', NULL);
INSERT INTO appointment VALUES (202, 70, 21, TO_DATE('2023-11-08 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (203, 71, 22, TO_DATE('2023-12-20 13:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss treatment plan', NULL);
INSERT INTO appointment VALUES (204, 72, 23, TO_DATE('2023-09-01 11:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', 'completed');
INSERT INTO appointment VALUES (205, 73, 24, TO_DATE('2023-10-10 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', NULL);
INSERT INTO appointment VALUES (206, 74, 25, TO_DATE('2023-11-05 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', NULL);
INSERT INTO appointment VALUES (207, 75, 26, TO_DATE('2023-12-15 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Annual checkup', NULL);
INSERT INTO appointment VALUES (208, 76, 27, TO_DATE('2023-09-08 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'New patient intake', 'completed');
INSERT INTO appointment VALUES (209, 77, 28, TO_DATE('2023-10-18 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup',NULL);
INSERT INTO appointment VALUES (210, 78, 29, TO_DATE('2023-11-25 08:30:00','YYYY-MM-DD HH24:MI:SS'), 'Medication review',NULL);
INSERT INTO appointment VALUES (211, 79, 30, TO_DATE('2023-12-10 13:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment',NULL);
INSERT INTO appointment VALUES (212, 80, 31, TO_DATE('2023-09-12 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss treatment plan', 'completed');
INSERT INTO appointment VALUES (213, 1, 1, TO_DATE('2023-07-15 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Routine checkup', 'completed');
INSERT INTO appointment VALUES (214, 2, 2, TO_DATE('2023-06-20 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', 'completed');
INSERT INTO appointment VALUES (215, 3, 3, TO_DATE('2023-05-10 11:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss test results','completed');
INSERT INTO appointment VALUES (216, 4, 4, TO_DATE('2023-08-05 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review','Cancelled');
INSERT INTO appointment VALUES (217, 5, 5, TO_DATE('2023-09-15 15:00:00','YYYY-MM-DD HH24:MI:SS'), 'New patient intake',NULL);
INSERT INTO appointment VALUES (218, 6, 6, TO_DATE('2023-10-10 13:45:00','YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment',NULL);
INSERT INTO appointment VALUES (219, 7, 7, TO_DATE('2023-07-18 09:30:00','YYYY-MM-DD HH24:MI:SS'), 'Routine checkup','completed');
INSERT INTO appointment VALUES (220, 8, 8, TO_DATE('2023-06-21 14:15:00','YYYY-MM-DD HH24:MI:SS'), 'Medication review','completed');
INSERT INTO appointment VALUES (221, 9, 9, TO_DATE('2023-05-12 11:30:00','YYYY-MM-DD HH24:MI:SS'), 'Annual checkup','completed');
INSERT INTO appointment VALUES (222, 10, 10, TO_DATE('2023-08-07 10:00:00','YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment','completed');
INSERT INTO appointment VALUES (223, 11, 11, TO_DATE('2023-09-18 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss treatment plan',NULL);
INSERT INTO appointment VALUES (224, 12, 12, TO_DATE('2023-10-12 12:30:00','YYYY-MM-DD HH24:MI:SS'), 'Routine checkup',NULL);
INSERT INTO appointment VALUES (225, 13, 13, TO_DATE('2023-07-20 09:45:00','YYYY-MM-DD HH24:MI:SS'), 'Medication review','Cancelled');
INSERT INTO appointment VALUES (226, 14, 14, TO_DATE('2023-06-23 14:00:00','YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment','completed');
INSERT INTO appointment VALUES (227, 15, 15, TO_DATE('2023-05-14 10:15:00','YYYY-MM-DD HH24:MI:SS'), 'Annual checkup','Cancelled');
INSERT INTO appointment VALUES (228, 16, 16, TO_DATE('2023-08-09 11:30:00','YYYY-MM-DD HH24:MI:SS'), 'New patient intake','completed');
INSERT INTO appointment VALUES (229, 17, 17, TO_DATE('2023-09-20 16:00:00','YYYY-MM-DD HH24:MI:SS'), 'Routine checkup',NULL);
INSERT INTO appointment VALUES (230, 18, 18, TO_DATE('2023-10-14 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Discuss treatment plan', NULL);
INSERT INTO appointment VALUES (231, 19, 19, TO_DATE('2023-07-22 12:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Medication review', 'completed');
INSERT INTO appointment VALUES (232, 20, 20, TO_DATE('2023-06-25 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Follow-up appointment', 'completed');
SELECT * FROM appointment;

INSERT INTO doctor VALUES (1,'Dr. John Doe','04706 97 627',1);
INSERT INTO doctor VALUES (2,'Dr. Sarah Johnson','04831 922 34',3);
INSERT INTO doctor VALUES (3,'Dr. David Smith','04494 481 31',6);
INSERT INTO doctor VALUES (4,'Dr. Mary Lee','04742 777 162',6);
INSERT INTO doctor VALUES (5,'Dr. Michael Brown','04491 902 125',6);
INSERT INTO doctor VALUES (6,'Dr. Emily Garcia','04923 212 921',2);
INSERT INTO doctor VALUES (7,'Dr. Daniel Kim','04915 630 391',6);
INSERT INTO doctor VALUES (8,'Dr. Amanda Rodriguez','04015 443 469',3);
INSERT INTO doctor VALUES (9,'Dr. Robert Chen','04063 616 94',1);
INSERT INTO doctor VALUES (10,'Dr. Samantha Davis','04682 982 25',5);
INSERT INTO doctor VALUES (11,'Dr. John Doe','04185 163 263',6);
INSERT INTO doctor VALUES (12,'Dr. Jane Smith','04831 936 123',3);
INSERT INTO doctor VALUES (13,'Dr. Michael Johnson','04869 535 959',1);
INSERT INTO doctor VALUES (14,'Dr. Sarah Lee','04107 571 601',3);
INSERT INTO doctor VALUES (15,'Dr. David Kim','04263 940 570',5);
INSERT INTO doctor VALUES (16,'Dr. Emily Chen','04040 43 16',6);
INSERT INTO doctor VALUES (17,'Dr. James Davis','04977 488 259',3);
INSERT INTO doctor VALUES (18,'Dr. Elizabeth Brown','04833 609 23',3);
INSERT INTO doctor VALUES (19,'Dr. William Wilson','04230 32 55',4);
INSERT INTO doctor VALUES (20,'Dr. Olivia Garcia','04171 349 427',4);
INSERT INTO doctor VALUES (21,'Dr. Daniel Rodriguez','04015 281 743',6);
INSERT INTO doctor VALUES (22,'Dr. Sophia Martinez','04810 800 884',4);
INSERT INTO doctor VALUES (23,'Dr. Ethan Thompson','04042 816 358',2);
INSERT INTO doctor VALUES (24,'Dr. Isabella Anderson','04362 235 455',6);
INSERT INTO doctor VALUES (25,'Dr. Benjamin Hernandez','04547 303 244',1);
INSERT INTO doctor VALUES (26,'Dr. Mia Taylor','04381 362 321',6);
INSERT INTO doctor VALUES (27,'Dr. Samuel Brown','04565 49 488',7);
INSERT INTO doctor VALUES (28,'Dr. Natalie Wilson','04290 393 752',1);
INSERT INTO doctor VALUES (29,'Dr. Jason Garcia','04565 708 934',7);
INSERT INTO doctor VALUES (30,'Dr. Victoria Davis','04599 188 963',2);
INSERT INTO doctor VALUES (31,'Dr. Ryan Lee','04230 211 879',4);
INSERT INTO doctor VALUES (32,'Dr. Chloe Kim','04715 245 582',5);
INSERT INTO doctor VALUES (33,'Dr. Christopher Rodriguez','04111 287 25',5);
INSERT INTO doctor VALUES (34,'Dr. Mia Martinez','04224 339 463',2);
INSERT INTO doctor VALUES (35,'Dr. William Thompson','04205 557 91',1);
INSERT INTO doctor VALUES (36,'Dr. Aria Anderson','04768 303 988',7);
INSERT INTO doctor VALUES (37,'Dr. Jacob Hernandez','04018 732 77',4);
INSERT INTO doctor VALUES (38,'Dr. Addison Taylor','04170 879 383',6);
INSERT INTO doctor VALUES (39,'Dr. Madison Brown','04224 257 87',4);
INSERT INTO doctor VALUES (40,'Dr. Daniel Wilson','04603 412 100',1);
INSERT INTO doctor VALUES (41,'Dr. Caroline Garcia','04203 525 672',6);
INSERT INTO doctor VALUES (42,'Dr. Ethan Davis','04791 174 336',6);
INSERT INTO doctor VALUES (43,'Dr. Mia Lee','04174 895 125',4);
INSERT INTO doctor VALUES (44,'Dr. Tyler Kim','04938 166 336',4);
INSERT INTO doctor VALUES (45,'Dr. Elizabeth Rodriguez','04189 16 258',5);
INSERT INTO doctor VALUES (46,'Dr. Michael Martinez','04244 969 478',5);
INSERT INTO doctor VALUES (47,'Dr. Sophia Thompson','04495 655 686',2);
INSERT INTO doctor VALUES (48,'Dr. William Anderson','04420 181 889',2);
INSERT INTO doctor VALUES (49,'Dr. Emma Hernandez','04985 74 804',5);
INSERT INTO doctor VALUES (50,'Dr. Hamid Zia','04985 99  804',NULL);
SELECT * FROM doctor;


-- Speciality Table
INSERT INTO speciality VALUES (1,'Cardiology');
INSERT INTO speciality VALUES (2,'Dermatology');
INSERT INTO speciality VALUES (3,'Endocrinology');
INSERT INTO speciality VALUES (4,'Gastroenterology');
INSERT INTO speciality VALUES (5,'Neurology');
INSERT INTO speciality VALUES (6,'Ophthalmology');
INSERT INTO speciality VALUES (7,'Pediatrics');
SELECT * FROM speciality;

INSERT INTO prescription VALUES (1,133,1);
INSERT INTO prescription VALUES (2,133,19);
INSERT INTO prescription VALUES (3,133,7);
INSERT INTO prescription VALUES (4,134,28);
INSERT INTO prescription VALUES (5,134,45);
INSERT INTO prescription VALUES (6,134,12);
INSERT INTO prescription VALUES (7,135,39);
INSERT INTO prescription VALUES (8,135,23);
INSERT INTO prescription VALUES (9,135,3);
INSERT INTO prescription VALUES (10,136,52);
INSERT INTO prescription VALUES (11,136,18);
INSERT INTO prescription VALUES (12,136,30);
INSERT INTO prescription VALUES (22,140,14);
INSERT INTO prescription VALUES (23,140,29);
INSERT INTO prescription VALUES (24,140,6);
INSERT INTO prescription VALUES (25,141,35);
INSERT INTO prescription VALUES (26,141,10);
INSERT INTO prescription VALUES (27,141,50);
INSERT INTO prescription VALUES (28,142,19);
INSERT INTO prescription VALUES (29,142,38);
INSERT INTO prescription VALUES (30,142,2);
INSERT INTO prescription VALUES (40,146,52);
INSERT INTO prescription VALUES (41,146,18);
INSERT INTO prescription VALUES (42,146,30);
INSERT INTO prescription VALUES (43,147,5);
INSERT INTO prescription VALUES (44,147,21);
INSERT INTO prescription VALUES (45,147,56);
INSERT INTO prescription VALUES (46,148,8);
INSERT INTO prescription VALUES (47,148,42);
INSERT INTO prescription VALUES (48,148,16);
INSERT INTO prescription VALUES (58,152,19);
INSERT INTO prescription VALUES (59,152,38);
INSERT INTO prescription VALUES (60,152,2);
INSERT INTO prescription VALUES (61,153,61);
INSERT INTO prescription VALUES (62,153,22);
INSERT INTO prescription VALUES (63,153,43);
SELECT * FROM prescription;

INSERT INTO drug VALUES (1);
INSERT INTO drug VALUES (2);
INSERT INTO drug VALUES (3);
INSERT INTO drug VALUES (4);
INSERT INTO drug VALUES (5);

--Q1
SELECT COUNT(*) AS "Total Patients"
FROM patient;

--Q2
SELECT gender, COUNT(*) AS gender_count
FROM patient
GROUP BY gender;
SELECT
  (SELECT COUNT(*) FROM patient WHERE gender = 'male') AS male_count,
  (SELECT COUNT(*) FROM patient WHERE gender = 'female') AS female_count
FROM dual;

--Q3
SELECT DISTINCT p.name
FROM patient p
JOIN appointment a ON p.patient_id = a.patient_id
WHERE UPPER(p.name) LIKE '%LEE%'
  AND UPPER(a.notes) LIKE '%FOLLOW-UP%';

--Q4
SELECT DISTINCT m.name AS medication_name
FROM patient p
JOIN prescription pr ON p.patient_id = pr.patient_id
JOIN medication m ON pr.drug_id = m.medication_id
WHERE p.name LIKE '%Smith';


--Q5
SELECT doctor_id, doctor_name
FROM doctor
WHERE doctor_id NOT IN (SELECT DISTINCT doctor_id FROM appointment);

--Q6
SELECT d.doctor_id, d.doctor_name
FROM doctor d
JOIN prescription p ON d.doctor_id = p.doctor_id
JOIN medication m ON p.medication_id = m.medication_id
WHERE LOWER(m.description) LIKE '%pain%'
GROUP BY d.doctor_id, d.doctor_name
HAVING COUNT(m.medication_id) > 2;

--Q7
SELECT DISTINCT p.patient_id, p.patient_name
FROM patient p
JOIN appointment a ON p.patient_id = a.patient_id
WHERE EXTRACT(MONTH FROM a.appointment_date) = 6
  AND EXTRACT(YEAR FROM a.appointment_date) = 2023;

--Q8
SELECT doctor_id, COUNT(*) AS appointment_count
FROM appointment
GROUP BY doctor_id, TRUNC(appointment_date)
ORDER BY appointment_count DESC
FETCH FIRST 1 ROW ONLY;

--Q9
SELECT TO_CHAR(appointment_date, 'Day') AS day_of_week, COUNT(*) AS total_appointments
FROM appointment
GROUP BY TO_CHAR(appointment_date, 'Day')
ORDER BY total_appointments DESC;

--Q10
SELECT DISTINCT p1.patient_name AS patient1, p2.patient_name AS patient2
FROM patient p1
JOIN patient p2 ON p1.patient_id < p2.patient_id
              AND TO_CHAR(p1.date_of_birth, 'MM') = TO_CHAR(p2.date_of_birth, 'MM');

--Q11
SELECT COUNT(*) AS num_patients_without_appointments
FROM patient
WHERE patient_id NOT IN (SELECT DISTINCT patient_id FROM appointment);

--Q12
SELECT DISTINCT m.medication_name
FROM medication m
LEFT JOIN prescription pr ON m.medication_id = pr.medication_id
WHERE pr.prescription_id IS NULL;

--Q13
SELECT DISTINCT d.doctor_id, d.doctor_name
FROM doctor d
JOIN appointment a ON d.doctor_id = a.doctor_id
JOIN patient p ON a.patient_id = p.patient_id
WHERE p.state = 'WA';

--Q14
SELECT medication_name
FROM (
    SELECT m.medication_name, COUNT(*) AS prescription_count
    FROM medication m
    JOIN prescription pr ON m.medication_id = pr.medication_id
    GROUP BY m.medication_name
    ORDER BY prescription_count DESC
)
WHERE ROWNUM = 2;

--Q15
SELECT DISTINCT p.patient_id, p.patient_name
FROM patient p
WHERE NOT EXISTS (
    SELECT 1
    FROM appointment a
    WHERE a.patient_id = p.patient_id AND a.status = 'Cancelled'
);

--Q16
SELECT *
FROM patient
WHERE gender = 'Female'
ORDER BY birth_date DESC, patient_id ASC
FETCH FIRST 1 ROW ONLY;

--Q17
SELECT DISTINCT m.medication_name
FROM medication m
JOIN prescription pr ON m.medication_id = pr.medication_id
GROUP BY m.medication_id, m.medication_name
HAVING COUNT(pr.prescription_id) = 1;

--Q18
SELECT m.medication_name, d.doctor_name
FROM medication m
JOIN prescription pr ON m.medication_id = pr.medication_id
JOIN doctor d ON pr.doctor_id = d.doctor_id
GROUP BY m.medication_id, m.medication_name, d.doctor_id, d.doctor_name
HAVING COUNT(pr.prescription_id) = 1;

--Q19
SELECT p.patient_id, p.patient_name
FROM patient p
JOIN appointment a ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.patient_name
HAVING COUNT(DISTINCT a.doctor_id) >= 3;





