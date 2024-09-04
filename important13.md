In SQL, `HAVING` and `WHERE` are both used to filter results, but they serve different purposes and are used in different contexts:

### `WHERE` Clause
- **Purpose**: The `WHERE` clause is used to filter rows before any groupings are made. It operates on individual rows of the table.
- **Use Case**: You use `WHERE` to filter records based on specific conditions.
- **Example**: If you want to select all employees with a salary greater than 50,000:
  ```sql
  SELECT * FROM employees WHERE salary > 50000;
  ```

### `HAVING` Clause
- **Purpose**: The `HAVING` clause is used to filter groups after the `GROUP BY` operation. It operates on the result of aggregations.
- **Use Case**: You use `HAVING` to filter groups based on aggregate functions like `COUNT()`, `SUM()`, `AVG()`, etc.
- **Example**: If you want to select departments that have more than 5 employees:
  ```sql
  SELECT department, COUNT(*) as num_employees
  FROM employees
  GROUP BY department
  HAVING COUNT(*) > 5;
  ```

### Key Differences
- **Order of Execution**: `WHERE` filters rows before any grouping occurs, while `HAVING` filters the groups created by `GROUP BY`.
- **Scope**: `WHERE` cannot be used with aggregate functions directly (unless it's in a subquery), while `HAVING` is specifically designed to filter based on aggregate functions.

### Combined Usage
You can use both `WHERE` and `HAVING` together in a query. `WHERE` will filter rows before grouping, and `HAVING` will filter the resulting groups.

```sql
SELECT department, COUNT(*) as num_employees
FROM employees
WHERE salary > 50000  -- Filter rows with salary > 50000
GROUP BY department
HAVING COUNT(*) > 5;  -- Filter groups with more than 5 employees
```