--Notes for MySql--

--How to create database?

`Create database <database_name>;`

--How to see all the created database;

`show databases;`

--How to stick to one database and in future do changes for that database?

`use <database_name>;`

--How to delete a database?

`drop database <database_name>;`

--How to create a table in any database?

`CREATE TABLE employee
(
name varchar(50),
age int,
salary int
);`


--varchar could contain at_max 255 characters only

--How to see all the tables in a database?

`show tables;`

--How to see the structure of any table?

`describe <table_name>;`
--or--
`desc <table_name>;`

--How to check in which database we are in?
 
`select database();`

 --How to unselect any database?
 there is no direct command for the same, we can either quit using 'quit' command or use another database;