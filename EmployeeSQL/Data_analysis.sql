--List the employee number, last name, first name, sex, and salary of each employee//*
SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary 
FROM employee e
JOIN salaries s
ON (e.emp_no = s.emp_no);

--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT first_name,last_name,hire_date  
FROM employee
WHERE hire_date>= '1986-01-01' AND hire_date<= '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dm.dept_no,dep.dept_name,dm.emp_no,em.last_name,em.first_name
FROM dept_manager dm
	JOIN departments dep
	ON (dm.dept_no = dep.dept_no)
		JOIN employee em
		ON (dm.emp_no=em.emp_no)
		ORDER BY dm.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT dep.dept_no,dep.dept_name,de.emp_no,em.last_name,em.first_name
FROM departments dep
	JOIN dept_emp de
	ON (dep.dept_no=de.dept_no)
		JOIN employee em
		ON (de.emp_no=em.emp_no)
		ORDER BY dep.dept_no;
		
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name,last_name,sex
FROM employee
WHERE first_name = 'Hercules' AND last_name like 'B%';		

--List each employee in the Sales department, including their employee number, last name, and first name 
SELECT emp_no,last_name,first_name
FROM employee 
WHERE emp_no IN
(
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no = 'd007'
);

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT dep.dept_name, em.emp_no,em.last_name,em.first_name
FROM employee em 
	JOIN dept_emp de ON em.emp_no = de.emp_no
	JOIN departments dep ON de.dept_no = dep.dept_no
		WHERE 	dep.dept_no = 'd007' OR dep.dept_no = 'd005'
		ORDER BY dept_name,emp_no;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT em.last_name, COUNT(DISTINCT em.last_name) AS "Last Name Count"
FROM employee em
GROUP BY em.last_name
ORDER BY "Last Name Count" DESC;

