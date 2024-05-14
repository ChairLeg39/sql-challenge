-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT * FROM Employees;
SELECT * FROM Salaries;

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees as e
LEFT JOIN Salaries as s 
ON e.emp_no = s.emp_no


-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT * FROM Employees;

SELECT e.first_name, e.last_name, e.hire_date
FROM Employees as e
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT * FROM Dept_Manager;
SELECT * FROM Department;

SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM Dept_Manager as dm
INNER JOIN Department as d
	ON dm.dept_no = d.dept_no
INNER JOIN Employees as e
	ON dm.emp_no = e.emp_no


-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT * FROM Dept_Emp;
SELECT * FROM Department;

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_Emp as de
INNER JOIN Employees as e
	ON de.emp_no = e.emp_no
INNER JOIN Department as d
	ON de.dept_no = d.dept_no


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT * FROM Employees;

SELECT e.first_name, e.last_name, e.sex
FROM Employees as e
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';


-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT * FROM Department;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees as e
	INNER JOIN Dept_Emp as de
		ON e.emp_no = de.emp_no
	INNER JOIN Department as d
		ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees as e
	INNER JOIN Dept_Emp as de
		ON e.emp_no = de.emp_no
	INNER JOIN Department as d
		ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


