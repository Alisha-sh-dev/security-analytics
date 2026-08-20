-- Table Definitions for Course Type
CREATE TABLE CourseType (
    CourseCode VARCHAR(10) PRIMARY KEY,
    CourseTitle VARCHAR(255),
    Duration INT,
    MaxNumStudents INT,
    CourseCost DECIMAL(10, 2)
);

-- Table Definitions for Allocated Student
CREATE TABLE AllocatedStudent (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(255),
    ContactInformation VARCHAR(255)
);

-- Table Definitions for Room
CREATE TABLE Room (
    RoomID INT PRIMARY KEY,
    RoomType VARCHAR(50),
    Facilities VARCHAR(255)
);

-- Table Definitions for Trainer
CREATE TABLE Trainer (
    TrainerID INT PRIMARY KEY,
    TrainerName VARCHAR(255),
    Specialization VARCHAR(255),
    ContactInformation VARCHAR(255)
);

-- Create CURRENTCOURSE table
CREATE TABLE CurrentCourse (
    CourseCode VARCHAR(10) PRIMARY KEY,
    StartDate DATE,
    Duration INT,
    MaxNumStudents INT,
    RoomID INT, -- Foreign Key to Room
    TrainerID INT, -- Foreign Key to Trainer
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID),
    FOREIGN KEY (TrainerID) REFERENCES Trainer(TrainerID)
);

-- Create ALLOCATION table
CREATE TABLE Allocation (
    AllocationID INT PRIMARY KEY,
    CourseCode VARCHAR(10), -- Foreign Key to CurrentCourse
    StudentID INT, -- Foreign Key to AllocatedStudent
    AllocationDate DATE,
    FOREIGN KEY (CourseCode) REFERENCES CurrentCourse(CourseCode),
    FOREIGN KEY (StudentID) REFERENCES AllocatedStudent(StudentID)
);

-- Create TRAINER_ALLOCATION table
CREATE TABLE Trainer_Allocation (
    CurrentCourseCode VARCHAR(10), -- Foreign Key to CurrentCourse
    TrainerID INT, -- Foreign Key to Trainer
    FOREIGN KEY (CurrentCourseCode) REFERENCES CurrentCourse(CourseCode),
    FOREIGN KEY (TrainerID) REFERENCES Trainer(TrainerID),
    PRIMARY KEY (CurrentCourseCode, TrainerID)
);


--b)populate
-- Corrected INSERT statements for CourseType
INSERT INTO CourseType (CourseCode, CourseTitle, Duration, MaxNumStudents, CourseCost)
VALUES ('CIMW1', 'Introduction to Microsoft Word', 3, 15, 150.00);
INSERT INTO CourseType (CourseCode, CourseTitle, Duration, MaxNumStudents, CourseCost)
VALUES ('CAES2', 'Advanced Excel Spreadsheet', 5, 10, 250.00);
INSERT INTO CourseType (CourseCode, CourseTitle, Duration, MaxNumStudents, CourseCost)
VALUES ('CPROG3', 'Programming Fundamentals in C', 5, 20, 300.00);

INSERT INTO AllocatedStudent (StudentID, StudentName, ContactInformation)
VALUES (101, 'John Smith', 'john.smith@email.com');
INSERT INTO AllocatedStudent (StudentID, StudentName, ContactInformation)
VALUES (102, 'Alice Johnson', 'alice.johnson@email.com');
INSERT INTO AllocatedStudent (StudentID, StudentName, ContactInformation)
VALUES (103, 'Bob Williams', 'bob.williams@email.com');

-- Populate Room table
INSERT INTO Room (RoomID, RoomType, Facilities)
VALUES (1, 'Classroom', 'Projector, Whiteboard');
INSERT INTO Room (RoomID, RoomType, Facilities)
VALUES (2, 'Computer Lab', 'Computers, Projector');
INSERT INTO Room (RoomID, RoomType, Facilities)
VALUES (3, 'Conference Room', 'Conference table, Audio-Visual System');

-- Populate Trainer table
INSERT INTO Trainer (TrainerID, TrainerName, Specialization, ContactInformation)
VALUES (101, 'Mary Brown', 'Microsoft Office Suite', 'mary.brown@email.com');
INSERT INTO Trainer (TrainerID, TrainerName, Specialization, ContactInformation)
VALUES (102, 'David Miller', 'Advanced Excel', 'david.miller@email.com');
INSERT INTO Trainer (TrainerID, TrainerName, Specialization, ContactInformation)
VALUES (103, 'Michael Johnson', 'Programming in C', 'michael.johnson@email.com');

INSERT INTO CurrentCourse (CourseCode, StartDate, Duration, MaxNumStudents, RoomID, TrainerID)
VALUES ('CIMW1', TO_DATE('2023-11-15', 'YYYY-MM-DD'), 3, 15, 1, 101);
INSERT INTO CurrentCourse (CourseCode, StartDate, Duration, MaxNumStudents, RoomID, TrainerID)
VALUES ('CAES2', TO_DATE('2023-12-01', 'YYYY-MM-DD'), 5, 10, 2, 102);
INSERT INTO CurrentCourse (CourseCode, StartDate, Duration, MaxNumStudents, RoomID, TrainerID)
VALUES ('CPROG3', TO_DATE('2023-12-10', 'YYYY-MM-DD'), 5, 20, 3, 103);

-- Populate Allocation table
INSERT INTO Allocation (AllocationID, CourseCode, StudentID, AllocationDate)
VALUES (1, 'CIMW1', 101, TO_DATE('2023-11-10', 'YYYY-MM-DD'));
INSERT INTO Allocation (AllocationID, CourseCode, StudentID, AllocationDate)
VALUES (2, 'CIMW1', 102, TO_DATE('2023-11-10', 'YYYY-MM-DD'));
INSERT INTO Allocation (AllocationID, CourseCode, StudentID, AllocationDate)
VALUES (3, 'CAES2', 103, TO_DATE('2023-11-25', 'YYYY-MM-DD'));




--c)
--Query 1
SELECT cc.CourseCode, cc.StartDate, cc.Duration, cc.MaxNumStudents, r.RoomType, t.TrainerName
FROM CurrentCourse cc
JOIN Room r ON cc.RoomID = r.RoomID
JOIN Trainer t ON cc.TrainerID = t.TrainerID
ORDER BY cc.CourseCode, cc.StartDate;

--Query 2
SELECT CourseCode, CourseTitle, Duration, MaxNumStudents, CourseCost
FROM CourseType
WHERE LOWER(CourseTitle) LIKE '%introduction%';

--Query 3
-- Most Expensive Course
SELECT CourseCode, CourseTitle, CourseCost
FROM CourseType
ORDER BY CourseCost DESC
FETCH FIRST 1 ROW ONLY;
-- Least Expensive Course
SELECT CourseCode, CourseTitle, CourseCost
FROM CourseType
ORDER BY CourseCost ASC
FETCH FIRST 1 ROW ONLY;

--Query 4
SELECT cc.CourseCode, COUNT(a.StudentID) AS NumberOfStudents
FROM CurrentCourse cc
JOIN Allocation a ON cc.CourseCode = a.CourseCode
GROUP BY cc.CourseCode;

--Query 5
SELECT cc.CourseCode, cc.StartDate, cc.Duration, r.RoomType, t.TrainerName
FROM CurrentCourse cc
JOIN Room r ON cc.RoomID = r.RoomID
JOIN Trainer t ON cc.TrainerID = t.TrainerID
WHERE cc.StartDate BETWEEN TO_DATE('2023-11-01', 'YYYY-MM-DD') AND TO_DATE('2023-12-01', 'YYYY-MM-DD');

--Query 6
SELECT ct.CourseCode, COUNT(cc.CourseCode) AS NumberOfCourses
FROM CourseType ct
LEFT JOIN CurrentCourse cc ON ct.CourseCode = cc.CourseCode
    AND cc.StartDate BETWEEN TO_DATE('2023-11-01', 'YYYY-MM-DD') AND TO_DATE('2023-12-01', 'YYYY-MM-DD')
GROUP BY ct.CourseCode
ORDER BY ct.CourseCode;

--Query 7
SELECT cc.CourseCode, cc.StartDate, r.RoomType, r.Facilities, t.TrainerName
FROM CurrentCourse cc
JOIN Room r ON cc.RoomID = r.RoomID
JOIN Trainer t ON cc.TrainerID = t.TrainerID
ORDER BY cc.CourseCode, cc.StartDate;

--Query 8
SELECT a.CourseCode, a.AllocationDate, s.StudentName
FROM Allocation a
JOIN AllocatedStudent s ON a.StudentID = s.StudentID
WHERE a.CourseCode = 'CIMW1' AND a.AllocationDate = TO_DATE('2023-11-10', 'YYYY-MM-DD');

--Query 9
SELECT cc.CourseCode, cc.StartDate AS "Date Run", ct.CourseCost,
       COUNT(a.StudentID) AS "No of Students",
       COUNT(a.StudentID) * ct.CourseCost AS Revenue
FROM CurrentCourse cc
JOIN CourseType ct ON cc.CourseCode = ct.CourseCode
LEFT JOIN Allocation a ON cc.CourseCode = a.CourseCode
GROUP BY cc.CourseCode, cc.StartDate, ct.CourseCost
ORDER BY cc.CourseCode, cc.StartDate;
