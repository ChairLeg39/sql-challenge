-- Drop tables if they exist (order of dropping respects foreign key dependencies)
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Dept_Manager;
DROP TABLE IF EXISTS Dept_Emp;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Titles;
DROP TABLE IF EXISTS Department;

-- Create Department table
CREATE TABLE Department (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- Verify Department table
SELECT * FROM Department;


-- Create Titles table
CREATE TABLE Titles (
    title_id VARCHAR(10) NOT NULL,
    title VARCHAR(50) NOT NULL,
    PRIMARY KEY (title_id)
);

-- Verify Titles table
SELECT * FROM Titles;


-- Create Employees table
CREATE TABLE Employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(20) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id),
    PRIMARY KEY (emp_no)
);

-- Verify Employees table
SELECT * FROM Employees;


-- Create Dept_Emp table (Junction table)
CREATE TABLE Dept_Emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Department(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Verify Dept_Emp table
SELECT * FROM Dept_Emp;


-- Create Dept_Manager table (Junction table)
CREATE TABLE Dept_Manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES Department(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- Verify Dept_Manager table
SELECT * FROM Dept_Manager;


-- Create Salaries table
CREATE TABLE Salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	PRIMARY KEY (emp_no)
);

-- Verify Salaries table
SELECT * FROM Salaries;