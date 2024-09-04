### SQL Operations and Queries

#### 1. **DISTINCT**

The `DISTINCT` keyword is used to remove duplicate values in a query result.

**Example**:

```sql
SELECT DISTINCT student_company FROM students;
```

This query retrieves unique values from the `student_company` column in the `students` table.

#### 2. **ORDER BY**

The `ORDER BY` clause is used to sort the result set of a query by one or more columns.

**Sorting in Ascending Order** (default):

```sql
SELECT student_fname, years_of_exp FROM students ORDER BY years_of_exp;
```

**Sorting in Descending Order**:

```sql
SELECT student_fname, years_of_exp FROM students ORDER BY years_of_exp DESC;
```

**Sorting by Column Position**:

```sql
SELECT student_fname, years_of_exp FROM students ORDER BY 2;
```

In this example, `2` refers to the second column in the `SELECT` clause.

**Sorting by Multiple Columns**:

- **Primary Sort by `years_of_exp` and Secondary Sort by `student_fname`**:

    ```sql
    SELECT student_fname, years_of_exp FROM students ORDER BY years_of_exp, student_fname;
    ```

- **Primary Sort by `years_of_exp` and Secondary Sort by `student_fname` in Descending Order**:

    ```sql
    SELECT student_fname, years_of_exp FROM students ORDER BY years_of_exp, student_fname DESC;
    ```

#### 3. **LIMIT and OFFSET**

- **Limit and Offset Example**:

    ```sql
    SELECT * FROM students ORDER BY enrollment_date DESC LIMIT 2, 5;
    ```

    - `LIMIT 2, 5` will skip the first 2 rows and return the next 5 rows from the result set.

- **Invalid Query with `DISTINCT` and `ORDER BY`**:

    ```sql
    SELECT DISTINCT source_of_joining FROM students ORDER BY enrollment_date DESC LIMIT 2;
    ```

  This query is invalid because `DISTINCT` cannot be used with `ORDER BY` in this way. Instead, use `DISTINCT` in conjunction with appropriate sorting and limit in different queries.

#### 4. **Pattern Matching with LIKE**

The `LIKE` operator is used to search for a specified pattern in a column.

- **Find First Names with Exactly 7 Characters**:

    ```sql
    SELECT * FROM students WHERE student_fname LIKE '_______';
    ```

  The underscore (`_`) represents a single character.

- **Find First Names Ending with 'at'**:

    ```sql
    SELECT * FROM students WHERE student_fname LIKE '%at';
    ```

  The percent sign (`%`) represents zero or more characters.

- **Find First Names Starting with 'ra'**:

    ```sql
    SELECT * FROM students WHERE student_fname LIKE 'ra%';
    ```

- **Find First Names Containing 'ra'**:

    ```sql
    SELECT * FROM students WHERE student_fname LIKE '%ra%';
    ```