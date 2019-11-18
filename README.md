# Pewlett-Hackard-Analysis.

## Project Overview: 
In Pewlett-Hackard-Analysis we created entity relationship diagrams (ERDs) to see the realtion between the data, also import data into a database and created queries and tables that uses SQL to create a list of mentor candidates. Lastly, we export the data to csv files from SQL.

## Resources:

- Data Source: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Software: QuickDBD, pgAdmin, Visual Studio Code

## Summary:
Here is the visual ERD of the challenge on QuickDBD:

![Fig1](https://github.com/hbostanchi/Bostanchi_Halleh_Pewlett-Hackard-Analysis./blob/master/png/QuickDBD-Departments.png)
	 
On the first part of the challenge we create a new table using retirement info to make a new table titles retiring using the right join technique to make that contains this:
- Employee number
- First and last name
- Current Title
- from_date
- Salary

![Fig2](https://github.com/hbostanchi/Bostanchi_Halleh_Pewlett-Hackard-Analysis./blob/master/png/titles_retiring.png)

The data exported to [title.retiting.csv](https://github.com/hbostanchi/Bostanchi_Halleh_Pewlett-Hackard-Analysis./blob/master/all_data/titles_retiring.csv) file .


On the second part of the challenge we create a titles unique table with the partitioning techniques on employees number to get each employees current titles descending order by from_date .

![Fig3](https://github.com/hbostanchi/Bostanchi_Halleh_Pewlett-Hackard-Analysis./blob/master/png/titles_unique.png)

And we made another table titles-count for the employees sharing the same titles.

![Fig4](https://github.com/hbostanchi/Bostanchi_Halleh_Pewlett-Hackard-Analysis./blob/master/png/titles_count.png)
The data exported to [titles.count.csv](https://github.com/hbostanchi/Bostanchi_Halleh_Pewlett-Hackard-Analysis./blob/master/all_data/titles_count.csv).

On third part of the challenge we made a mentor table on by employees number on ascending order:
- employee number
- first name
- last name
- Current title 
- From date
- to date 
- birth date( between 01/01/1965 and 12/01/1965)

![Fig5](https://github.com/hbostanchi/Bostanchi_Halleh_Pewlett-Hackard-Analysis./blob/master/png/mentor.png)

we exported data to [mentor.csv](https://github.com/hbostanchi/Bostanchi_Halleh_Pewlett-Hackard-Analysis./blob/master/all_data/mentor.csv) for the employees who are ready for mastership.
