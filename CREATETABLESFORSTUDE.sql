-- Creating Students Table
CREATE TABLE Students (
    StudentID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    Age NUMBER,
    Email VARCHAR2(100)
);

-- Creating Courses Table
CREATE TABLE Courses (
    CourseID NUMBER PRIMARY KEY,
    CourseName VARCHAR2(50)
);

-- Creating Enrollments Table
CREATE TABLE Enrollments (
    EnrollmentID NUMBER PRIMARY KEY,
    StudentID NUMBER,
    CourseID NUMBER,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Sample data for Students Table
INSERT INTO Students (StudentID, FirstName, LastName, Age, Email)
VALUES 
    (1, 'John', 'Doe', 20, 'john.doe@example.com'),
    (2, 'Jane', 'Smith', 22, 'jane.smith@example.com'),
    (3, 'Alice', 'Johnson', 21, 'alice.johnson@example.com');

-- Sample data for Courses Table
INSERT INTO Courses (CourseID, CourseName)
VALUES 
    (101, 'Computer Science'),
    (102, 'Mathematics'),
    (103, 'Physics');

-- Sample data for Enrollments Table
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate)
VALUES 
    (1, 1, 101, TO_DATE('2023-01-01', 'YYYY-MM-DD')),
    (2, 2, 102, TO_DATE('2023-01-02', 'YYYY-MM-DD')),
    (3, 3, 103, TO_DATE('2023-01-03', 'YYYY-MM-DD'));

COMMIT;
