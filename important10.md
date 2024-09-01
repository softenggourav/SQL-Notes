-- introducing not for not equal, not like

select * from students where location!='bangalore';

select * from courses where course_name not like '%data%';

--using and operator
select * from students where years_of_exp <8 and location='bangalore' and source_of_joining='google';

--using or operator
select * from students where years_of_exp<8 or years_of_exp>12;

--using between operator
select * from students where years_of_exp between 8 and 12;


-- using or operator
select * from students where student_company='flipkart' or student_company='microsoft';
--using in operator
select * from students where student_company in ('flipkart','microsoft');
--don't use square bracket, it will not work
select * from students where student_company in ['flipkart','microsoft'];



-- using case, when, then and else, end as
select course_id, course_name, course_fee,
    case
        when course_duration_months > 4 then 'masters'
        else 'diploma'
    end as course_type
from courses;



--using case, multiple when then else, end as
select student_id, student_fname, student_lname,student_company,
case
    when student_company in ('google','microsoft') then 'faang'
    when student_company in ('flipkart') then 'good product based company'
    else 'normal company'
end as company_type
from students;




