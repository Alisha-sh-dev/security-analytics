# Database Lab: SQL Operations on Department and Instructor Tables

## Overview
This lab demonstrates basic SQL operations on two related tables: **DEPARTMENT** and **INSTRUCTOR**. It covers table creation, data insertion, updates, deletions, queries, and temporary table usage. The scenario simulates a university database where departments manage multiple instructors.

---

## Database Schema
**DEPARTMENT**
- DEPTNO (PK)
- DEPTNAME (NOT NULL)
- LOCATION (Default 'KUWAIT')

**INSTRUCTOR**
- ID (PK)
- NAME (NOT NULL)
- DEPTNO (FK → DEPARTMENT.DEPTNO)
- SALARY
- GENDER (Default '?')
- BDATE

---

## Operations
- **INSERT:** Add departments and instructors, with defaults applied when values are missing.  
- **UPDATE:** Modify salaries, department names, and instructor details (conditional and global updates).  
- **DELETE:** Remove specific instructors, clear temporary tables; demonstrate foreign key restrictions.  
- **SELECT:** Query by salary, gender, birthdate, location, and multiple conditions.  
- **Temporary Tables:** Create copies (`tmpInstructor`, `tmpDepartment`) for practice.

---

## Sample Data
**DEPARTMENT**
| DEPTNO | DEPTNAME          | LOCATION |
|--------|-------------------|----------|
| 1      | Computer Science  | DOHA     |
| 2      | ECE               | JAHRA    |
| 3      | CSE               | KUWAIT   |
| 4      | English           | KUWAIT   |

**INSTRUCTOR**
| ID    | NAME      | DEPTNO | SALARY | GENDER | BDATE       |
|-------|-----------|--------|--------|--------|-------------|
| 12345 | SAUD      | 1      | 1500   | M      | 1980-05-09  |
| 12346 | AHMAD     | 1      | 2000   | M      | 1990-09-30  |
| 12347 | MOHAMMED  | 2      | 3500   | M      | 1978-05-03  |
| 12348 | ZAIAB     | 3      | 2500   | F      | 1990-09-20  |
| 12349 | REEM      | 1      | 0      | F      | 2000-01-01  |

---

## Key Learnings
- Create tables with **PRIMARY KEY**, **FOREIGN KEY**, **NOT NULL**, and **DEFAULT** constraints.  
- Perform **INSERT, UPDATE, DELETE, SELECT** operations with conditions.  
- Understand **referential integrity** (cannot delete parent rows with child references).  
- Use **temporary tables** for practice and testing.

---

## How to Run
1. Set up MySQL or compatible RDBMS.  
2. Execute `CREATE TABLE` statements.  
3. Run `INSERT` queries to populate data.  
4. Practice `UPDATE`, `DELETE`, and `SELECT` queries.  
5. Verify results with `SELECT *` statements.


---

## 🔗 Connect
**Alisha Sh**  
GitHub: [@Alisha-sh-dev](https://github.com/Alisha-sh-dev)  
LinkedIn: [Alisha Sh](https://linkedin.com/in/Alisha-Sh)

---

## License
Educational use only. Free to modify for learning SQL concepts.

