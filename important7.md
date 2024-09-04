### Issue with `DISTINCT` and `ORDER BY`

- **Problem**: The SQL query using `DISTINCT` combined with `ORDER BY` may not work as expected. The `ORDER BY` clause is intended to sort the final result set, but when combined with `DISTINCT`, it may not behave as intended because the sorting happens before the `DISTINCT` clause is applied.

**Incorrect Query**:
```sql
SELECT DISTINCT source_of_joining 
FROM students 
ORDER BY enrollment_date DESC 
LIMIT 2;
```

- **Explanation**: In this query, `DISTINCT` is applied to `source_of_joining`, and then the result is sorted by `enrollment_date`. However, this approach does not guarantee that the sorting and distinct operations align correctly because `DISTINCT` operates on the entire row before sorting is applied.

### Correct Approach

- **Concept**: To apply `DISTINCT` and `ORDER BY` correctly, you should first ensure that `DISTINCT` is correctly applied, and then apply sorting. However, the sorting should not be directly influenced by the `DISTINCT` clause results.

**Example 1: Correct Usage of `DISTINCT` with `ORDER BY`**:
```sql
SELECT DISTINCT A, B 
FROM T1 
ORDER BY B DESC;
```
- **Explanation**: Here, `DISTINCT` is applied to the combination of columns `A` and `B`, and then the result is sorted by `B` in descending order. This works as expected because the distinct operation applies to the row combination.

**Example 2: Incorrect Approach**:
```sql
SELECT DISTINCT A 
FROM T1 
ORDER BY B;
```
- **Explanation**: In this case, `DISTINCT` is applied to column `A`, but the `ORDER BY` clause on `B` is not valid because `B` is not included in the `SELECT DISTINCT` list.

### Steps to Achieve Correct Results

1. **Select Required Columns**:
   ```sql
   SELECT A, B 
   FROM T1;
   ```

2. **Apply DISTINCT**:
   ```sql
   SELECT DISTINCT A, B 
   FROM T1;
   ```

3. **Apply ORDER BY**:
   ```sql
   SELECT A 
   FROM (SELECT DISTINCT A, B FROM T1) AS Y 
   ORDER BY B;
   ```
 - **Explanation**: First, select `A` and `B` and apply `DISTINCT` on them. Then, use the result set (`Y`) and order by `B`. This sequence ensures that distinct rows are correctly selected and then sorted.

- **Note**: MySQL and other SQL databases have certain restrictions and behavior regarding how `DISTINCT` and `ORDER BY` interact. It’s important to understand these constraints to correctly formulate your queries.

