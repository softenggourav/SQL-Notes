--DISTINCT
select distinct student_company from students;

-- order by
select student_fname, years_of_exp from students order by years_of_exp;
select student_fname, years_of_exp from students order by 2;
--above both command give same result

-select student_fname, years_of_exp from students order by years_of_exp desc;
--above command give result in reverse order

--order by years of exp and if years of exp is same, order by student first name
select student_fname, years_of_exp from students order by years_of_exp, student_fname;

--order by years of exp and if years of exp is same, reverse order by student first name
select student_fname, years_of_exp from students order by years_of_exp, student_fname desc;


-- this query wont work
select distinct source_of_joining from students order by enrollment_date desc limit 2;

-- this query will return students in reverse order of enrollment date and from 3rd row, it will give 5 rows
select * from students order by enrollment_date desc limit 2,5;


--get all the students whose firstname contains 7 character
select * from students where student_fname like '_______';

-- get all the students whose firstname ends with 'at'
select * from students where student_fname like '%at';

-- get all the students whose firstname starts with 'ra'
select * from students where student_fname like 'ra%';

-- get all the students whose firstname contains with 'ra'
select * from students where student_fname like '%ra%';





