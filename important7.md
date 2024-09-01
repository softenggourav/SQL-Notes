-- this query wont work

`select distinct source_of_joining from students order by enrollment_date desc limit 2;`



--the idea is  the  ORDER BY should be a part of the SELECT statement  as a final output as DISTINCT .
 Example  1 :

     `SELECT Distinct A,B From T1 Order By  B DESC` ==>will work

     `SELECT DISTINCT A from T1  ORDER BY  B `==> will not work .

Example 2  :

`SELECT DISTINCT A from t1 ORDER BY B;`

 Steps:
1.     SELECT A,B from  t1; ==> X
2.     SELECT DISTINCT  A,B from X ==>Y (Not  the distinct clause I wanted to fire)
3.     SELECT A FROM Y  ORDER BY  B; ==> Final Answer which is Wrong MySQL prevents it