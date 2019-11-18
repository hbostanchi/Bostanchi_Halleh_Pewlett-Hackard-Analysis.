--Number of [titles]Retiring
SELECT ri.emp_no,
ri.first_name,
ri.last_name,
ti.title,
ti.from_date,
s.salary
INTO titles_retiring
FROM retirement_info as ri
RIGHT JOIN titles AS ti
ON (ri.emp_no = ti.emp_no)
INNER JOIN salaries AS s
ON (ri.emp_no = s.emp_no);

--second part of challenge
--most recent titles
--DROP TABLE titles_unique
SELECT first_name, last_name, title, from_date, emp_no, salary 
INTO titles_unique
FROM(
	SELECT
		emp_no,
		first_name,
		last_name,
		title,
		from_date,
		salary,
	ROW_NUMBER() OVER (PARTITION BY (emp_no) ORDER BY from_date DESC)
	FROM titles_retiring) AS tmp
WHERE row_number = 1;
--SELECT * FROM titles_unique;
  
--count employees  share the same titles
--DROP TABLE title_count
SELECT
	title,
	count(*)
INTO title_count
FROM titles_unique
GROUP BY title
HAVING count(*) > 1;
--SELECT * FROM title_count;


--Who's Ready for a Mentor
--DROP TABLE mentor
SELECT e.emp_no,
e.first_name,
e.last_name,
titles.title,
titles.to_date,
titles.from_date,
e.hire_date
INTO mentor
FROM employees as e
INNER JOIN titles ON e.emp_no = titles.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (titles.to_date = '9999-01-01')
ORDER BY e.emp_no;
--SELECT * FROM mentor;


