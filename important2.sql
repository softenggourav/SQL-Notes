--CRUD operations
--create - 'insert' command
--read - 'select' command
--update - 'update' command
--delete - 'drop' command

--How to create a table in any database?
CREATE TABLE employee
(
name varchar(50),
age int,
salary int
);

create table employee(
firstname varchar(20),
middlename varchar(20),
lastname varchar(20),
age int,
salary int,
location varchar(20)
);


-- How to insert value in table?
insert into employee values ('satish', 'kumar', 'sharma', 28, 10000, 'bangalore');

-- It's recommended to give column name as well but it's not necessary
insert into employee(firstname, middlename, lastname, age, salary, location) values ('kapil', 'kumar', 'sharma', 28, 10000, 'bangalore');

insert into employee(firstname, lastname, age, salary, location) values ("rajes'h", 'sharma', 32, 20000, 'bangalore');

insert into employee(firstname, lastname, age, salary, location) values ('rajes"h', 'sharma', 32, 20000, 'bangalore');

insert into employee(firstname, lastname, age, salary, location) values ('rajes/'h', 'sharma', 32, 20000, 'bangalore');

--All above three statements will work;

insert into employee(firstname, middlename, lastname, age, salary, location) values ('kapil', 'kumar', 'sharma', '20', 10000, 'bangalore');


--NULL and NOT NULL
create table employee(
firstname varchar(20) not null,
middlename varchar(20),
lastname varchar(20) not null,
age int not null,
salary int not null,
location varchar(20) not null
);

insert into employee( middlename, lastname, age, salary, location) values ( 'kumar', 'sharma', '20', 10000, 'bangalore');


-- Default values
create table employee(
firstname varchar(20) not null,
middlename varchar(20),
lastname varchar(20) not null,
age int not null,
salary int not null,
location varchar(20) default 'bangalore'
);

insert into employee(firstname, lastname, age, salary, location) values ('kapil', 'sharma', 28, 10000, null);

create table employee(
firstname varchar(20) not null,
middlename varchar(20),
lastname varchar(20) not null,
age int not null,
salary int not null,
location varchar(20) not null default 'bangalore'
);
--below query will throw error because location can't be null
insert into employee(firstname, lastname, age, salary, location) values ('kapil', 'sharma', 28, 10000, null);
