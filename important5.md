--Foreign Key constraint

`create table students(
student_id int auto_increment,
student_fname varchar(30) not null,
student_lname varchar(30) not null,
student_mname varchar(30),
student_email varchar(30) not null,
student_phone varchar(15) not null,
student_alternate_phone varchar(15),
enrollment_date timestamp not null default current_timestamp,
years_of_exp int,
student_company varchar(30),
batch_date varchar(30) not null,
source_of_joining varchar(30) not null,
location varchar(30) not null,
primary key (student_id),
unique key (student_email)
);`

`insert into students(student_fname, student_lname, student_email, student_phone, years_of_exp, batch_date, source_of_joining, location)
values ('rohit', 'sharma', 'rohit@gmail.com', '9191919191', 6, '5-02-2021', 'linkedin', 'bangalore');`

`insert into students(student_fname, student_lname, student_email, student_phone, years_of_exp,student_company, batch_date, source_of_joining, location)
values ('virat', 'kohli', 'virat@gmail.com', '9292929292', 6, 'flipkart', '5-02-2021', 'linkedin', 'hyderabad');`

`insert into students(student_fname, student_lname, student_email, student_phone, years_of_exp, batch_date, source_of_joining, location)
values ('shikhar', 'dhawan', 'shikhar@gmail.com', '9393939393', 6, '5-02-2021', 'google', 'bangalore');`

`insert into students(student_fname, student_lname, student_email, student_phone, years_of_exp, batch_date, source_of_joining, location)
values ('rahul', 'dravid', 'rahul@gmail.com', '9494949494', 8, '5-02-2021', 'quora', 'chennai');`

`insert into students(student_fname, student_lname, student_email, student_phone, years_of_exp,student_company, batch_date, source_of_joining, location)
values ('kapil', 'dev', 'kapil@gmail.com', '9595959595', 15, 'microsoft', '5-02-2021', 'friend', 'pune');`



`create table courses(
course_id int not null,
course_name varchar(30) not null,
course_duration_months int not null,
course_fee int not null,
primary key (course_id)
);`


`insert into courses values
(1, 'big data', 6, 50000),
(2,'web development', 3, 20000),
(3, 'data science', 6, 40000),
(4, 'devops', 1, 10000);`


`create table students(
student_id int auto_increment,
student_fname varchar(30) not null,
student_lname varchar(30) not null,
student_mname varchar(30),
student_email varchar(30) not null,
student_phone varchar(15) not null,
student_alternate_phone varchar(15),
enrollment_date timestamp not null default current_timestamp,
selected_course int not null default 1,
years_of_exp int,
student_company varchar(30),
batch_date varchar(30) not null,
source_of_joining varchar(30) not null,
location varchar(30) not null,
primary key (student_id),
unique key (student_email)
);`


`insert into students(student_fname, student_lname, student_email, student_phone,selected_course,  years_of_exp, batch_date, source_of_joining, location)
values ('rohit', 'sharma', 'rohit@gmail.com', '9191919191',4,  6, '5-02-2021', 'linkedin', 'bangalore');`

`insert into students(student_fname, student_lname, student_email, student_phone, years_of_exp,student_company, batch_date, source_of_joining, location)
values ('virat', 'kohli', 'virat@gmail.com', '9292929292', 6, 'flipkart', '5-02-2021', 'linkedin', 'hyderabad');`

`insert into students(student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp, batch_date, source_of_joining, location)
values ('shikhar', 'dhawan', 'shikhar@gmail.com', '9393939393', 2, 6, '5-02-2021', 'google', 'bangalore');`

`insert into students(student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp, batch_date, source_of_joining, location)
values ('rahul', 'dravid', 'rahul@gmail.com', '9494949494', 3, 8, '5-02-2021', 'quora', 'chennai');`

`insert into students(student_fname, student_lname, student_email, student_phone, years_of_exp,student_company, batch_date, source_of_joining, location)
values ('kapil', 'dev', 'kapil@gmail.com', '9595959595', 15, 'microsoft', '5-02-2021', 'friend', 'pune');`


`create table students(
student_id int auto_increment,
student_fname varchar(30) not null,
student_lname varchar(30) not null,
student_mname varchar(30),
student_email varchar(30) not null,
student_phone varchar(15) not null,
student_alternate_phone varchar(15),
enrollment_date timestamp not null default current_timestamp,
selected_course int not null default 1,
years_of_exp int,
student_company varchar(30),
batch_date varchar(30) not null,
source_of_joining varchar(30) not null,
location varchar(30) not null,
primary key (student_id),
unique key (student_email),
foreign key (selected_course) references courses(course_id)
);`


`insert into students(student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp,student_company, batch_date, source_of_joining, location)
values ('sourav', 'ganguly', 'sourav@gmail.com', '9696969696', 8, 15, 'adobe', '5-02-2021', 'friend', 'kolkata');`


--foreign key constraint
--It is used to prevent actions that would destroy links between two tables.
--Foreign key is a field in one table which refers to the primary key in another table.
--selected_course is a foreign key in students table which refers to course_id (primary key) in courses table.


--the table with the foreign key is called the child table.
--the table with the child key is called the parent or referenced table.

-- constraints are used to limit the type of data that go into a table. if there is any violation in constraint, then the action is aborted.
-- constraint available:,
-- not null
-- primary key
-- unique key
-- foreign key
-- check constraint (not supported in mysql)






















