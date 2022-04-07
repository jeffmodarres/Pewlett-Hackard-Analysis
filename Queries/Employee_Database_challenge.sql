-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;

--Deliverable 1:
-- Part 1
SELECT e.emp_no,  e.first_name, e.last_name, 
 ti.title , ti.from_date , ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no,ti.to_date DESC;

-- Part 2
SELECT DISTINCT ON (e.emp_no) e.emp_no,  e.first_name, e.last_name,  
 ti.title 
INTO unique_titles
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND ti.to_date ='9999-01-01'
ORDER BY e.emp_no,ti.to_date DESC;

-- Part 3
SELECT COUNT(ut.title),ut.title 
INTO Retiring_Titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title)  DESC;

--Deliverable 2:
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date , de.to_date,
ti.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date ='9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;