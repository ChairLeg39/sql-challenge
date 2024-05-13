-- Create tables and import data
-- Drop table if exists
DROP TABLE IF EXISTS Department;

-- Create new table
CREATE TABLE Department (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Verify successful data import
SELECT * FROM Department;



-- Drop table if exists
DROP TABLE IF EXISTS Dept_Emp;

-- Create new table
CREATE TABLE Dept_Emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES Department (dept_no)
);

-- Verify successful data import
SELECT * FROM Dept_Emp;



-- Drop table if exists
DROP TABLE IF EXISTS Dept_Manager;

-- Create new table
CREATE TABLE Dept_Manager (
	dept_no VARCHAR NOT NULL,
	emp_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

-- Verify successful data import
SELECT * FROM Dept_Manager;



-- Drop table if exists
DROP TABLE IF EXISTS Employees;

-- Create new table
CREATE TABLE Employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles (title_id),
	PRIMARY KEY (emp_no)
);

-- Verify successful data import
SELECT * FROM Employees;



-- Drop table if exists
DROP TABLE IF EXISTS Salaries;

-- Create new table
CREATE TABLE Salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

-- Verify successful data import
SELECT * FROM Salaries;



-- Drop table if exists
DROP TABLE IF EXISTS Titles;

-- Create new table
CREATE TABLE Titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);

-- Verify successful data import
SELECT * FROM Titles;