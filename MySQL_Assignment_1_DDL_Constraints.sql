CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
    department_id INT,
    department_name VARCHAR(100)
);
CREATE TABLE Location (
    location_id INT,
    location_name VARCHAR(100)
);
CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(100),
    gender CHAR(1),
    age INT,
    designation VARCHAR(50),
    hire_date DATE,
    department_id INT,
    location_id INT
);
ALTER TABLE Employees
ADD COLUMN email VARCHAR(150);
ALTER TABLE Employees
MODIFY COLUMN designation VARCHAR(150);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;
CREATE DATABASE employee;
USE employee;
-- 2. Create Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
-- 3. Create Location table
CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
INSERT INTO Employees (employee_name, gender, age)
VALUES ('Anu', 'F', 25);
SELECT * FROM Employees;
INSERT INTO Employees (employee_name, gender, age)
VALUES ('Rahul', 'X', 25);
INSERT INTO Employees (employee_name, gender, age)
VALUES ('Arun', 'M', 16);
SELECT employee_id, employee_name, hire_date
FROM Employees;
SELECT * FROM Departments;
INSERT INTO Employees
    (employee_name, gender, age, department_id)
VALUES
    ('John', 'M', 25, 999);
SELECT * FROM Location;
INSERT INTO Employees
    (employee_name, gender, age, location_id)
VALUES
    ('Priya', 'F', 25, 999);
INSERT INTO Employees (employee_name, gender, age)
VALUES (NULL, 'M', 25);    

SELECT * FROM Departments;

INSERT INTO Departments
    (department_id, department_name)
VALUES
    (1, 'IT'),
    (2, 'HR'),
    (3, 'Finance');
    
 INSERT INTO Location (location_name)
VALUES
    ('Kochi'),
    ('Bengaluru'),
    ('Chennai');
    
 INSERT INTO Employees
    (employee_name, gender, age, designation,
     email, department_id, location_id)
VALUES
    ('Anu', 'F', 25, 'Data Analyst',
     'anu@example.com', 1, 1),
    ('Rahul', 'M', 30, 'Software Engineer',
     'rahul@example.com', 1, 2),
    ('Meera', 'F', 28, 'HR Executive',
     'meera@example.com', 2, 3);   



