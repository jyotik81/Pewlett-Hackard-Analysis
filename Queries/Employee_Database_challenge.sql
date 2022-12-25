-- Deliverable 1
-- From query results, create  a table " Retirement_titles"
select e.emp_no,e.first_name,e.last_name,t.title, t.from_date, t.to_date
into retirement_titles
From titles As t
Left Join employees as e
on e.emp_no = t.emp_no
where e.birth_date between '1952-01-01' AND '1955-12-31'
order by e.emp_no;

select * from retirement_titles;

--Use Distinct with Orderby to remove duplicate rows 
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.to_date,
rt.first_name,
rt.last_name, 
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;

--View the results of the query
select * from unique_titles;

--Write a query to retrieve the number of employees by their most recent job title who are 
Select count(ut.emp_no), ut.title
into retiring_titles
from unique_titles as ut
group by ut.title
order by count(ut.title) desc;

--view the results of the query
select * from retiring_titles;

--Deliverable 2
--write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
select distinct on (e.emp_no) e.emp_no,
                   e.first_name,
				   e.last_name,
				   e.birth_date,
				   de.from_date,
				   de.to_date,
				   t.title
into mentorship_eligibility
from employees as e
left join dept_emp as de
on (e.emp_no = de.emp_no)
left join titles as t
on (e.emp_no = t.emp_no)
where e.birth_date between '1965-01-01' and '1965-12-31'
and (de.to_date = '9999-01-01')
order by e.emp_no Asc;

--View results of query
select * from mentorship_eligibility;

				   