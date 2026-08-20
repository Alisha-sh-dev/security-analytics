# GBT Training Organization – Database System

## Overview

This repository contains the **database design and SQL implementation** for the GBT (Global Business Training) Organization, developed as part of the **Principles of Computing** module.

The project manages:

- Courses and course types
- Students and course allocations
- Rooms and facilities
- Trainers
- Course revenue and reports

## 📁 Project Structure

```text
GBT-Training-Organization/
│
├── README.md
├── GBT_Training_Report.pdf
├── GBT_Training_Database.sql
└── images/
    ├── ERD.png
    └── query_outputs/
```

## 🗃️ Database Tables

- **CourseType** – Course details, duration, capacity, and cost
- **CurrentCourse** – Scheduled course information
- **AllocatedStudent** – Student details
- **Allocation** – Student-to-course allocations
- **Room** – Training room and facility details
- **Trainer** – Trainer information and specialization

## 📊 ERD

The database uses relationships between courses, students, allocations, rooms, and trainers.

![Entity Relationship Diagram](images/ERD.png)

## 🔍 Key SQL Queries

The project includes **9 SQL queries** for:

- Currently running courses
- Courses containing "Introduction"
- Most and least expensive courses
- Number of students per course
- Courses between specific dates
- Number of courses by type
- Room and trainer allocations
- Students allocated to a course
- Total revenue for each course

## 🚀 How to Use

Run the SQL script in **Oracle SQL*Plus** or a compatible database environment:

```bash
sqlplus username/password @GBT_Training_Database.sql
```

The script creates the tables, inserts sample data, and executes the required queries.

## 🛠️ Technologies

- SQL
- Oracle Database
- SQL*Plus
- ERD / Relational Database Design

## 👩‍💻 Author

**Alisha Sh**

[GitHub](#) • [LinkedIn](#)

⭐ Feel free to explore the project and its database design.