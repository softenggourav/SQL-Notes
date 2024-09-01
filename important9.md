-- More data types --

--issue if courses structure is below
desc courses;
+------------------------+-------------+------+-----+---------+-------+
| Field                  | Type        | Null | Key | Default | Extra |
+------------------------+-------------+------+-----+---------+-------+
| course_id              | int         | NO   | PRI | NULL    |       |
| course_name            | varchar(30) | NO   |     | NULL    |       |
| course_duration_months | int         | NO   |     | NULL    |       |
| course_fee             | int         | NO   |     | NULL    |       |
+------------------------+-------------+------+-----+---------+-------+

-- and we try to insert this course where course_duration_months is 4.5
insert into courses values (5,'data structure',4.5, 15000);

-- it will insert month as 5, it rounds off because datatype of course_duration_months is int
-- decimal(6,2) means there would be at max 6 digits and at max 2 digits are allowed after decimal point
create table courses_new(
course_id int not null,
course_name varchar(30) not null,
course_duration_months decimal(3,1) not null,
course_fee int not null,
primary key (course_id)
);

insert into courses_new values
(1, 'big data', 6.5, 50000),
(2,'web development', 3.5, 20000),
(3, 'data science', 6, 40000),
(4, 'devops', 1, 10000);

--if we want to keep decimal values for course_duration_months column
create table courses_new(
course_id int not null,
course_name varchar(30) not null,
course_duration_months decimal(3,1) not null,
course_fee int not null,
changed_at timestamp default now(),
primary key (course_id)
);

insert into courses_new(course_id, course_name, course_duration_months, course_fee) values
(1, 'big data', 6.5, 50000),
(2,'web development', 3.5, 20000),
(3, 'data science', 6, 40000),
(4, 'devops', 1, 10000);


--when we want to add column with default as current timestamp and even when we change the value of changed_at change to current timestamp
create table courses_new(
course_id int not null,
course_name varchar(30) not null,
course_duration_months decimal(3,1) not null,
course_fee int not null,
changed_at timestamp default current_timestamp on update current_timestamp,
primary key (course_id)
);

--instead of using current timestamp, we can opt for now() as well
create table courses_new(
course_id int not null,
course_name varchar(30) not null,
course_duration_months decimal(3,1) not null,
course_fee int not null,
changed_at timestamp default now() on update now(),
primary key (course_id)
);




