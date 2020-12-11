-- Creating table schema
-- Drop tables to eliminate errors
-- Ordered this way to make sure no dependencies
DROP TABLE salaries;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE departments;
DROP TABLE employees;
DROP TABLE titles;

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


-- Create table dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR (10),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM dept_manager;


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
