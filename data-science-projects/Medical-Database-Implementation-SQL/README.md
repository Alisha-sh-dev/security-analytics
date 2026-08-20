# Medical Database Implementation – SQL

## 📋 Overview

This project demonstrates the **design and implementation of a relational database** for a medical/healthcare system. The database manages patients, doctors, appointments, medications, prescriptions, and specialities using **Oracle SQL**.

The project was developed as part of the **MIS602 – Data Modelling and Database Design** course and includes a complete schema with sample data, 20+ analytical queries, and a detailed design report.

---

## 🗄️ Database Schema

The database consists of the following tables:

| Table | Description |
|-------|-------------|
| **speciality** | Medical specialities (e.g., Cardiology, Dermatology) |
| **doctor** | Doctor information (name, phone, speciality) |
| **patient** | Patient details (name, DOB, gender, address, state) |
| **appointment** | Appointments linking patients and doctors |
| **medication** | Medication catalogue (name, manufacturer, dosage, description) |
| **drug** | Reference table for drug identifiers |
| **prescription** | Prescriptions linking patients, doctors, and medications |

### Entity Relationship Overview

```text
speciality (1) ─── (N) doctor
doctor (1) ─── (N) appointment
patient (1) ─── (N) appointment
patient (1) ─── (N) prescription
medication (1) ─── (N) prescription
doctor (1) ─── (N) prescription
drug (1) ─── (N) prescription
```

---

## 📊 Sample Queries (20 Questions)

The implementation includes solutions to 20 analytical queries, including:

| # | Query Description |
|---|-------------------|
| 1 | Count total patients |
| 2 | Compare male vs female patient counts |
| 3 | Find patients with "Lee" in name and "follow-up" in appointment notes |
| 4 | Retrieve medications prescribed to patients named "Smith" |
| 5 | List doctors with no appointments (subquery) |
| 6 | Doctors prescribing "pain" medications >2 times |
| 7 | Patients with appointments in June 2023 |
| 8 | Doctor with the most appointments in a single day |
| 9 | Total appointments grouped by day of week |
| 10 | Patients sharing the same birth month |
| 11 | Patients with no appointments |
| 12 | Medications never prescribed |
| 13 | Doctors who treated patients from 'WA' |
| 14 | Second most prescribed medication |
| 15 | Patients who never cancelled an appointment |
| 16 | Youngest female patient |
| 17 | Medications prescribed only once |
| 18 | Medications prescribed once with doctor names |
| 19 | Patients with ≥3 different doctors |
| 20 | 3NF compliance analysis |

---

## 🛠️ Technologies Used

| Technology | Purpose |
|------------|---------|
| **Oracle SQL Plus** | Database creation and query execution |
| **Oracle SQL Developer** | GUI for database management and visualization |
| **SQL** | DDL (CREATE), DML (INSERT), DQL (SELECT) |

---

## 📁 Repository Structure

```text
Medical-Database-Implementation-SQL/
├── README.md # This file
├── Data-Modelling-And-Database-Design.pdf # Full report (design, queries, 3NF analysis)
├── SQL-Schema.sql # Complete DDL + DML + 20 queries
└── screenshots/ # Database screenshots (optional)
    ├── sqlplus-connection.png
    ├── tables-overview.png
    ├── query-results.png
    └── ...
```

---

## 🚀 How to Use

### 1. Set Up the Database

**Using Oracle SQL Plus:**

```sql
-- Connect as SYSDBA
sqlplus / as sysdba

-- Create a new user
CREATE USER mis602_ass2 IDENTIFIED BY your_password;
GRANT CONNECT, RESOURCE, DBA TO mis602_ass2;

-- Connect as the new user
CONNECT mis602_ass2/your_password

-- Run the schema file
@SQL-Schema.sql
```

**Using Oracle SQL Developer:**

1. Open Oracle SQL Developer
2. Create a new connection with the user credentials
3. Open `SQL-Schema.sql`
4. Execute the script (F5)

---

## 📋 Sample Query Outputs

### Q1: Total Patients

```text
Total Patients
--------------
           103
```

### Q2: Gender Distribution

```text
GENDER   GENDER_COUNT
-------- ------------
male              52
female            51
```

### Q8: Busiest Doctor in a Day

```text
DOCTOR_ID   APPOINTMENT_COUNT
---------- -----------------
        1                  3
```

### Q9: Appointments by Day of Week

```text
DAY_OF_WEEK   TOTAL_APPOINTMENTS
------------ -------------------
Wednesday                   15
Tuesday                     14
Monday                      13
...
```

---

## 📚 Third Normal Form (3NF) Compliance

The database tables are evaluated for Third Normal Form (3NF) compliance:

| Table | 3NF Status | Notes |
|-------|------------|-------|
| **patient** | ✅ Yes | All attributes dependent on `patient_id` |
| **doctor** | ✅ Yes | All attributes dependent on `doctor_id` |
| **speciality** | ✅ Yes | Single primary key, no transitive dependencies |
| **medication** | ✅ Yes | All attributes dependent on `medication_id` |
| **appointment** | ⚠️ Needs PK | Requires primary key definition |
| **prescription** | ⚠️ Needs PK | Requires primary key definition |

### Suggested Improvements
- Add primary keys to `appointment` and `prescription` tables
- Normalize address fields (separate street, suburb, postcode)
- Add audit timestamps (`created_at`, `updated_at`) to track changes
- Implement referential integrity with cascading rules

---

## ⚠️ Disclaimer

This project is for educational and portfolio purposes only. It was developed as part of an academic coursework in Data Modelling and Database Design. The data is fictional and generated for demonstration purposes.

---

## 👤 Author

**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)
