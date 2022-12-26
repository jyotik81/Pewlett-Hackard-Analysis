# Pewlett-Hackard-Analysis

1. Overview of the analysis:

The purpose of the new analysis is well defined.

Bobby wants to help to his manager for 'silver Tsunami'
Hence i have created a report that summarizes following analysis for many current employees who reach retirement age.

I worked with Bobby, an HR analyst, to perform employee research in order to provide the organization required information 
to prepare for the large number of retirements. Our research sought to answer the following questions: 
who will be retiring in the next few years and how many positions will the company need to fill? 
This analysis will help the company prepare by generating a list of all employees eligible for the retirement package.
The employee data that we needed was only available in the form of six CSV files because the company has been mainly using Excel and VBA to work with their data.
But now the company finally decided to update its methods and instead use SQL. My task was to help Bobby build an employee database with SQL by applying data modeling, engineering and analysis skills.

Project Steps : 
I used PostgreSQL, a relational database system, and pgAdmin to delveop an employee database with SQL. 
Using ERD, I used PostgreSQL and pgAdmin to create a database and then tables. I then wrote and executed SQL code to join the tables, 
import the csv files into the database, and then wrote queries to prepare the required reports. 

Challenges

I experienced challenges in learning pgAdmin. This included opening and using an existing SQL file.
 I learned the restore function that allows this. I also struggled with writing the join table codes in SQL.
 I added a second left join in the query for the second deliverable to create a mentorship eligibility table and related report. 
Finally, I learned that developing queries for a database is an iterative process whereby it may take multiple attempts to get the specific data needed.

Results:
I developed a series of tables and related csv files using SQL scripts. 
The scripts can be found in the “Employee_Database_Challenge.sql” file. 

- employees table and csv file provide data that modified the retirement_info table that not only meet the
criteria for retirement eligibility, i.e. born between 1952 and 1955 and hired between 1985 and 1988, but also restricts to just current employees.
 I also added the employee number and the to_date that confirms each as an active employee. 

- Retirement_titles table and csv file provide data of those employees who meet the two criteria for retirement eligibility,
 and lists each employee’s respective titles, both current and prior titles in the company. 
The list does contain both current and non-current employees.

- Unique_titles table and csv provide data that modified the retirement_titles query to restrict to only current employees and provide their current titles.

- Retiring_titles table and csv provide summary data of the count of current employees who are retirement eligible, grouped by title. 

- Mentorship_eligibility table and csv provide data of current employees who are eligible for the mentorship program, i.e. the employee was born in 1965. 
 This provides a list of 1,549 mentorship eligible current employees.

Summary

Here is a summary of my findings and recommendations to assist the company in preparing for this large scale of employee retirements:

Based on the employee table, lot of current employees are retirement eligible and likely need to be filled.

The mentorship eligible employees were limited to only 1,549 employees, despite a much larger group of likely qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees.

The employee_countby_dept query suggests that there are only a total of 72458 total current employees, so retirement eligible employees represent the vast majority.

Another helpful query to construct as a follow are the number of managers that are retirement eligible.
