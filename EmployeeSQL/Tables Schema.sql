drop table Employees;
drop table Departments;
drop table Department_Employees;
drop table Department_Manager;
drop table Salaries;
drop table Titles;

CREATE TABLE Departments (
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
);

SELECT *
FROM Departments;

CREATE TABLE Department_manager (
dept_no VARCHAR NOT NULL,
emp_no INTEGER NOT NULL,
PRIMARY KEY (dept_no, emp_no)
);

SELECT *
FROM Department_manager;

CREATE TABLE Department_employees (
emp_no INTEGER NOT NULL,
dept_no VARCHAR NOT NULL,
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
PRIMARY KEY (emp_no, dept_no)
);

SELECT *
FROM Department_employees;

CREATE TABLE Employees (
emp_no INTEGER NOT NULL,
emp_title_id VARCHAR NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date DATE,
PRIMARY KEY (emp_no)
);

SELECT *
FROM Employees;

CREATE TABLE Salaries (
emp_no INTEGER NOT NULL,
salary INTEGER NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

SELECT *
FROM Salaries;

drop table Titles;

CREATE TABLE Titles (
emp_title_id VARCHAR NOT NULL,
title VARCHAR NOT NULL,
PRIMARY KEY (emp_title_id)
);

SELECT *
FROM Titles;


