-- Creating Employees Table
CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    Birthdate DATE,
    DepartmentID NUMBER,
    CONSTRAINT FK_Emp_Department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Creating Departments Table
CREATE TABLE Departments (
    DepartmentID NUMBER PRIMARY KEY,
    DepartmentName VARCHAR2(50)
);

-- Creating EmployeeDepartments Table to store the relationship
CREATE TABLE EmployeeDepartments (
    EmployeeID NUMBER,
    DepartmentID NUMBER,
    CONSTRAINT FK_EmpDep_Employee FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_EmpDep_Department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    PRIMARY KEY (EmployeeID, DepartmentID)
);

-- Sample data for Departments Table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance');
-- Sample data for Employees Table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Birthdate, DepartmentID)
VALUES 
    (101, 'John', 'Doe', TO_DATE('1990-01-15', 'YYYY-MM-DD'), 1),
    (102, 'Jane', 'Smith', TO_DATE('1988-05-22', 'YYYY-MM-DD'), 2),
    (103, 'Bob', 'Johnson', TO_DATE('1992-03-10', 'YYYY-MM-DD'), 3);

-- Sample data for EmployeeDepartments Table
INSERT INTO EmployeeDepartments (EmployeeID, DepartmentID)
VALUES 
    (101, 1),
    (102, 2),
    (103, 3);

-- Renaming the Employees Table to "EmployeeInfo"
ALTER TABLE Employees RENAME TO EmployeeInfo;

COMMIT;
