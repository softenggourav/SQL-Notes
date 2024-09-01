--introduce unique value

`create table employee(
id int auto_increment,
firstname varchar(20) not null,
middlename varchar(20),
lastname varchar(20) not null,
age int not null,
salary int not null,
location varchar(20) not null default 'bangalore',
primary key(id)
);`

`insert into employee(firstname, middlename, lastname, age, salary) 
values ( 'kapil', 'kumar', 'sharma', 28, 10000);`


-- primary key
--We can only have 1 primary key and primary key cannot hold any null, we should use primary key when we have to
--distinctly/uniquely identify each record.

-- unique key
--similar to primary key, unique key has to be unique but it can hold null value. In MySql database, a unique key could hold
--any number of null values, in some other db's unique key could hold only one null value
-- so the purpose of unique key is to make sure values do not duplicate


-- We can have only one primary key but multiple unique keys in a table.


`create table employee(
firstname varchar(20) not null,
lastname varchar(20) not null,
age int not null,
primary key(firstname, lastname)
);`

`insert into employee(id, firstname, lastname, age) values (2,'kapil', 'sharma', 30);`


`create table employee(
id int unique key,
firstname varchar(20),
lastname varchar(20),
age int not null
);
`
