# How to write a SQL query in R?
Last Updated : 05 Feb, 2023
In this article, we are going to learn how to write SQL queries in the R programming language.

What is SQL Query?
  SQL stands for Structured Query Language. SQL queries are used for interacting with a database. Using SQL queries we can access and manipulate data stored in the database. With the help of SQL queries, we can create, read, update and delete data on databases and performs lots more operations on the database.

sqldf package
We are going to use sqldf package to run SQL queries in R. Sqldf is a convenient R tool that allows the execution of SQL operations on R data frames. The databases MySQL, PostgreSQL, H2, and SQLite can all be used with sqldf. We can run SQL queries in R using sqldf package.

Note: Working with SQL becomes very easy in R if we have a good understanding of the SQL commands. Click here to learn the basics of SQL.



#######################
# installing sqldf package 
install.packages("sqldf")
