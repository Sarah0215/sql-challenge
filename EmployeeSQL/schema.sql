CREATE TABLE employee(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date date, 
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(10),
	hire_date date	
);

CREATE TABLE salaries(
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER NOT NULL
);

CREATE TABLE departments(
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(30)
);

CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR(10),
	PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no INTEGER,
	PRIMARY KEY (dept_no,emp_no)
);

CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(20) NOT NULL
);

SELECT * from employee;


