--count function

--number of students in students table
select count(*) from students;


--get distinct count of number of student_company from students table
select count(distinct student_company) from students;


--get all the students whose batch_date is starting in the month 02
select * from students where batch_date like '%-02-%';
select count(*) from students where batch_date like '%-02-%';

--get all the students whose batch_date is starting from 19th day
select * from students where batch_data like '19-__-____';
select count(*) from students where batch_data like '19-__-____';

--group by
-- get all the source of joining with their counts
select source_of_joining, count(*) from students group by source_of_joining;

--below query wont work because of same reason that whatever filter we apply should present on other side of views as well
select source_of_joining, count(*) from students group by location;

-- composite grouping
select student_company, source_of_joining, count(*) from students group by student_company, source_of_joining;
select source_of_joining, location, count(*) from students group by source_of_joining, location;


--MIN & MAX
select MIN(years_of_exp) from students;
select MAX(years_of_exp) from students;
select AVG(years_of_exp) from students;

select source_of_joining, MIN(years_of_exp) from students group by source_of_joining;
select source_of_joining, MAX(years_of_exp) from students group by source_of_joining;

select source_of_joining, AVG(years_of_exp) from students group by source_of_joining;
