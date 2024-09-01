create table employee(
id int primary key,
firstname varchar(20) not null,
middlename varchar(20),
lastname varchar(20) not null,
age int not null,
salary int not null,
location varchar(20) not null default 'bangalore'
);

insert into employee(id, firstname, lastname, age, salary) values (1, 'kapil', 'sharma', 28, 20000);

insert into employee(id, firstname, lastname, age, salary) values (2, 'rajesh', 'sharma', 30, 20000);

insert into employee(id, firstname, lastname, age, salary) values (3, 'manish', 'sharma', 32, 20000);

--get the employees whose age is greater than 29
select * from employee where age > 29;

--select by applying a where clause (filter condition)

select * from employee where firstname='Manish';
--by default  it is case insensitive

-- if you want to keep case sensitive, use binary keyword before search field
select * from employee where binary firstname='Manish';

--Update
update employee set lastname='sinha' where firstname='manish';

--updating salary of all employee by 5000
update employee set salary=salary+5000;

--updating with multiple filter
update employee set location='bangalore' where firstname='manish' and lastname='sinha';


--Delete
delete from employee where id=3;

--if we want to delete all the records, use below query
delete from employee;


--Alter command
--this command is used to alter the schema of the table
--example of adding new column
alter table employee add column jobtitle varchar(50);
--example of removing column
alter table employee drop column jobtitle;
--example of modifying a column
alter table employee modify column firstname varchar(50) not null;
--example of dropping the primary key
alter table employee drop primary key;
--example of adding the primary key;
alter table employee add primary key (id);



-- DDL vs DML

--DDL - Data definition language - deals with table structure
-- create, alter, drop, truncate - DDL commands

--DML - Data manipulation language - here we deal with the data directly
--insert, update, delete - DML commands


-- Truncate
-- it also removes all the records but internally it drops the table and recreates it. That's why it is not DML, it's DDL
truncate table employee;









