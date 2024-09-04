### COUNT Function
- **Definition**: The `COUNT` function in SQL returns the number of rows that match a specified condition.

**Count of All Rows**:
```sql
SELECT COUNT(*) 
FROM students;
```

**Distinct Count**:
- **Purpose**: To get the count of unique values in a column.

```sql
SELECT COUNT(DISTINCT student_company) 
FROM students;
```

**Count of Students by Batch Date Starting in February**:
```sql
SELECT * 
FROM students 
WHERE batch_date LIKE '%-02-%';

SELECT COUNT(*) 
FROM students 
WHERE batch_date LIKE '%-02-%';
```

**Count of Students with Batch Date Starting from the 19th Day**:
```sql
SELECT * 
FROM students 
WHERE batch_date LIKE '19-__-____';

SELECT COUNT(*) 
FROM students 
WHERE batch_date LIKE '19-__-____';
```

---

### GROUP BY
- **Definition**: The `GROUP BY` clause groups rows that have the same values into summary rows, like "total sales" or "number of students."

**Count of Students by Source of Joining**:
```sql
SELECT source_of_joining, COUNT(*) 
FROM students 
GROUP BY source_of_joining;
```

**Invalid Query Example**:
- **Reason**: Grouping by `location` instead of `source_of_joining` would be invalid if filtering is not aligned with the grouping.

```sql
SELECT source_of_joining, COUNT(*) 
FROM students 
GROUP BY location;
```

**Composite Grouping**:
- **Definition**: Groups by multiple columns.

**Count of Students by Student Company and Source of Joining**:
```sql
SELECT student_company, source_of_joining, COUNT(*) 
FROM students 
GROUP BY student_company, source_of_joining;
```

**Count of Students by Source of Joining and Location**:
```sql
SELECT source_of_joining, location, COUNT(*) 
FROM students 
GROUP BY source_of_joining, location;
```

---

### MIN & MAX Functions
- **Definition**: The `MIN` and `MAX` functions return the smallest and largest values in a column, respectively.

**Minimum Years of Experience**:
```sql
SELECT MIN(years_of_exp) 
FROM students;
```

**Maximum Years of Experience**:
```sql
SELECT MAX(years_of_exp) 
FROM students;
```

**Average Years of Experience**:
```sql
SELECT AVG(years_of_exp) 
FROM students;
```

**Grouped by Source of Joining**:
- **Minimum Years of Experience**:
```sql
SELECT source_of_joining, MIN(years_of_exp) 
FROM students 
GROUP BY source_of_joining;
```

- **Maximum Years of Experience**:
```sql
SELECT source_of_joining, MAX(years_of_exp) 
FROM students 
GROUP BY source_of_joining;
```

- **Average Years of Experience**:
```sql
SELECT source_of_joining, AVG(years_of_exp) 
FROM students 
GROUP BY source_of_joining;
```