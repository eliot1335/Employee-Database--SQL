-- Creating table schema
-- Drop all tables
DROP TABLE departments;
DROP TABLE titles;
DROP TABLE employees;
DROP TABLE dept_managers;
DROP TABLE dept_emp;
DROP TABLE salaries;

-- Create table departments
CREATE TABLE departments (
  dept_no VARCHAR(10) NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

SELECT * FROM departments;


--Creating titles table
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * FROM title;


-- Create table employees
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

SELECT * FROM employees;


-- Create table dept_managers
CREATE TABLE dept_managers (
	dept_no VARCHAR (10),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM dept_managers;


--Create table dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;


--Creating salaries table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM salaries;
