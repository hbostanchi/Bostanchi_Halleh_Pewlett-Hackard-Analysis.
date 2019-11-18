# Pewlett-Hackard-Analysis.

##Project Overview: 
In Pewlett-Hackard-Analysis we created entity relationship diagrams (ERDs) to see the realtion between the data, also import data into a database and created queries and tables that uses SQL to create a list of mentor candidates. Lastly, we export the data to csv files from SQL.

##Resources:

- Data Source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Software: QuickDBD, pgAdmin, Visual Studio Code

##Summary:
Here is the visual ERD of the challenge on QuickDBD:

******Figure here*****

On the first part of the challenge we create a new table using retirement info to make a new table titles retiring using the right join technique to make that contains this:
- Employee number
- First and last name
- Current Title
- from_date
- Salary

******Figure here*****

The data exported to title.retiting.csv file .


On the second part of the challenge we create a titles unique table with the partitioning techniques on employees number to get each employees current titles descending order by from_date .

******Figure here*****
And  we made another table titles-count for the employees sharing the same titles.

******Figure here*****


On third part of the challenge we made a mentor table on by employees number on ascending order:
- employee number
- first name
- last name
- Current title 
- From date
- to date 
- birth date( between 01/01/1965 and 12/01/1965)

******Figure here*****

we exported data to mentor.csv for the employees who are ready for mastership.
