# sql-challenge
KU Boot Camp Week 9 Challenge

# Pewlett Hackard Employee Database Project 📊

## Background 📜

It's been two weeks since I was hired as a new data engineer at Pewlett Hackard, a fictional company. My first major task was to conduct a research project about employees whom the company employed during the 1980s and 1990s. All that remained of the employee database from that period were six CSV files.

Project tasks included: 📑
- Designing tables to hold data from the CSV files.
- Importing the CSV files into a SQL database.
- Answering questions about the data through data modeling, data engineering, and data analysis.

## Instructions 📝

### Data Modeling 🌐
- Utilized QuickDBD to sketch an ERD.
- QuickDBD link: [QuickDBD](https://app.quickdatabasediagrams.com/)

### Data Engineering 🛠️
- Created table schemas for each of the six CSV files with the following considerations:
  - Specified data types, primary keys, foreign keys, and other constraints.
  - Ensured primary keys were unique. Used a composite key when necessary to uniquely identify a row.
  - Created tables in the correct order to handle foreign keys properly.
  - Imported each CSV file into its corresponding SQL table.

### Data Analysis 🔍
- Executed SQL queries to answer the following:
    - **Employee Details**: Number, last name, first name, sex, and salary.
    - **Hires of 1986**: First name, last name, and hire date.
    - **Department Managers**: Department number, name, employee number, last name, and first name.
    - **Employees by Department**: Department number, employee number, last name, first name, and department name.
    - **Employees named Hercules B.**: First name, last name, and sex.
    - **Employees in the Sales Department**: Employee number, last name, and first name.
    - **Employees in the Sales and Development Departments**: Employee number, last name, first name, and department name.
    - **Employee Last Name Frequency**: Frequency counts of employee last names, in descending order.

### Tools Used 🔧
- **pgAdmin**: Used for SQL queries, managing the database schema, and performing data analysis.

## Conclusion 🏁

This project was pivotal in understanding the historical employee data at Pewlett Hackard, allowing for detailed analysis and insights into employment trends during the 1980s and 1990s.
