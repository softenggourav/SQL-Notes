### Using `NOT` for Filtering

**Not Equal to**:
- **Definition**: Use `!=` or `<>` to filter rows where a column value is not equal to a specified value.

**Example**:
```sql
SELECT * 
FROM students 
WHERE location != 'bangalore';
```

**Not Like**:
- **Definition**: Use `NOT LIKE` to filter rows where a column value does not match a specified pattern.

**Example**:
```sql
SELECT * 
FROM courses 
WHERE course_name NOT LIKE '%data%';
```

---

### Using Logical Operators

**AND Operator**:
- **Definition**: Use the `AND` operator to combine multiple conditions that all must be true for a row to be included in the result.

**Example**:
```sql
SELECT * 
FROM students 
WHERE years_of_exp < 8 
  AND location = 'bangalore' 
  AND source_of_joining = 'google';
```

**OR Operator**:
- **Definition**: Use the `OR` operator to combine multiple conditions where at least one condition must be true for a row to be included in the result.

**Example**:
```sql
SELECT * 
FROM students 
WHERE years_of_exp < 8 
   OR years_of_exp > 12;
```

---

### Using `BETWEEN` Operator

**Definition**: Use the `BETWEEN` operator to filter rows where a column value is within a specified range, inclusive of the boundary values.

**Example**:
```sql
SELECT * 
FROM students 
WHERE years_of_exp BETWEEN 8 AND 12;
```

---

### Using `IN` Operator

**Definition**: Use the `IN` operator to filter rows where a column value matches any value in a specified list.

**Example**:
```sql
SELECT * 
FROM students 
WHERE student_company IN ('flipkart', 'microsoft');
```

**Incorrect Usage**:
- **Note**: Do not use square brackets with `IN` as it is not valid SQL syntax.

**Incorrect Example**:
```sql
SELECT * 
FROM students 
WHERE student_company IN ['flipkart', 'microsoft'];
```

---

### Using `CASE`, `WHEN`, `THEN`, `ELSE`, and `END`

**Single `CASE` Statement**:
- **Definition**: Use `CASE` to return different values based on conditional logic.

**Example**:
```sql
SELECT course_id, course_name, course_fee,
    CASE
        WHEN course_duration_months > 4 THEN 'masters'
        ELSE 'diploma'
    END AS course_type
FROM courses;
```

**Multiple `WHEN` Clauses**:
- **Definition**: Use multiple `WHEN` clauses to handle various conditions and return different values accordingly.

**Example**:
```sql
SELECT student_id, student_fname, student_lname, student_company,
    CASE
        WHEN student_company IN ('google', 'microsoft') THEN 'faang'
        WHEN student_company IN ('flipkart') THEN 'good product based company'
        ELSE 'normal company'
    END AS company_type
FROM students;
```