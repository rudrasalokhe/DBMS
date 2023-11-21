CREATE DATABASE IF NOT EXISTS StudentDatabase;
CREATE TABLE IF NOT EXISTS Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Course VARCHAR(50)
);
INSERT INTO Students (StudentID, FirstName, LastName, Age, Course)
VALUES
    (1, 'John', 'Doe', 20, 'Computer Science'),
    (2, 'Jane', 'Smith', 22, 'Mathematics'),
    (3, 'Alice', 'Johnson', 21, 'Physics');
COMMIT;
