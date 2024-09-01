-- self join
-- A self join is a regular join in which a table is joined to itself
-- Self joins are powerful for comparing values in a column of rows with the same table

`select column_name(s) from table as T1 JOIN table as T2 on T1.col_name=T2.col_name;`

![img.png](images/img_3.png)

`select T1.empName, T2.empName from emp as T1 join emp as T2 on T1.manager_id=T2.empid;` 


-- union
-- The sql union clause/operator is used to combine/concatenate the results of two or more select statements without 
-- returning any duplicate rows and keep unique records

-- To use the union clause, each select statement must have 
    - the same number of columns selected and expressions
    - the same data type
    - have them in the same order

`select column_name(s) from tableA union select column_name(s) from tableB;`

-- Example

`select cust_name, cust_amount from custA union select cust_name, cust_amount from custB;`


-- union all
-- In union all, everything is same as union, it combines/concatenate two or more table but keeps all records, 
-- including duplicates

`select column_name(s) from tableA union all select column_name(s) from tableB;`

-- Example

`select cust_name, cust_amount from custA union all select cust_name, cust_amount from custB;`

