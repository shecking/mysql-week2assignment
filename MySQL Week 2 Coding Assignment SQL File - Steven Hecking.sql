SELECT t.title AS 'Title', COUNT(e.emp_no) AS 'Total Employees'
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE birth_date > '1965-01-01'
GROUP BY title;

SELECT t.title AS 'Title', AVG(s.salary) AS 'Average Salary'
FROM salaries AS s
INNER JOIN titles AS t
ON s.emp_no = t.emp_no
GROUP BY title;

SELECT d.dept_name as 'Department', SUM(s.salary) AS 'Money Spent' 
	# selecting to show what department from departments and sum of how much money was spent on salaries
FROM salaries s 
	# from the salaries table
INNER JOIN dept_emp de ON de.emp_no = s.emp_no 
	# joining dept_emp to salaries (dept_emp becoming join table)
INNER JOIN departments d ON d.dept_no = de.dept_no 
	# joining departments to join table dept_emp
WHERE d.dept_name = 'Marketing' AND de.from_date >= '1990-01-01' AND de.to_date <= '1992-12-31';
	# where the department is 'Marketing' and defining a date range for their employees









