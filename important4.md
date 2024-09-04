### CRUD Operations in MySQL

#### Create (Insert Command)

To create a table and insert records into it:

```sql
CREATE TABLE employee (
    id INT PRIMARY KEY,
    firstname VARCHAR(20) NOT NULL,
    middlename VARCHAR(20),
    lastname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) NOT NULL DEFAULT 'bangalore'
);

INSERT INTO employee(id, firstname, lastname, age, salary) 
VALUES (1, 'kapil', 'sharma', 28, 20000);

INSERT INTO employee(id, firstname, lastname, age, salary) 
VALUES (2, 'rajesh', 'sharma', 30, 20000);

INSERT INTO employee(id, firstname, lastname, age, salary) 
VALUES (3, 'manish', 'sharma', 32, 20000);
```

#### Read (Select Command)

To retrieve employees whose age is greater than 29:

```sql
SELECT * FROM employee WHERE age > 29;
```

To retrieve a specific employee by name using a `WHERE` clause (filter condition):

```sql
SELECT * FROM employee WHERE firstname='Manish';
```

By default, the search is case-insensitive. If you want to make it case-sensitive, use the `BINARY` keyword:

```sql
SELECT * FROM employee WHERE BINARY firstname='Manish';
```

#### Update Command

To update a specific record, such as changing the last name of an employee:

```sql
UPDATE employee SET lastname='sinha' WHERE firstname='manish';
```

To increase the salary of all employees by 5000:

```sql
UPDATE employee SET salary=salary+5000;
```

To update a record with multiple filter conditions:

```sql
UPDATE employee SET location='bangalore' WHERE firstname='manish' AND lastname='sinha';
```

#### Delete Command

To delete a specific employee record:

```sql
DELETE FROM employee WHERE id=3;
```

To delete all records in the `employee` table:

```sql
DELETE FROM employee;
```

### Alter Command in MySQL

The `ALTER` command is used to modify the schema of a table.

#### Adding a New Column

To add a new column `jobtitle`:

```sql
ALTER TABLE employee ADD COLUMN jobtitle VARCHAR(50);
```

#### Removing a Column

To remove the `jobtitle` column:

```sql
ALTER TABLE employee DROP COLUMN jobtitle;
```

#### Modifying a Column

To modify the `firstname` column to increase its length:

```sql
ALTER TABLE employee MODIFY COLUMN firstname VARCHAR(50) NOT NULL;
```

#### Dropping the Primary Key

To drop the primary key from the `employee` table:

```sql
ALTER TABLE employee DROP PRIMARY KEY;
```

#### Adding a Primary Key

To add a primary key to the `id` column:

```sql
ALTER TABLE employee ADD PRIMARY KEY (id);
```

### DDL vs DML

#### DDL (Data Definition Language)

- **DDL** commands deal with the structure of the table, not the data itself.
- Examples: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`.

#### DML (Data Manipulation Language)

- **DML** commands deal directly with the data within the table.
- Examples: `INSERT`, `UPDATE`, `DELETE`.

### Truncate Command

The `TRUNCATE` command is used to remove all records from a table:

```sql
TRUNCATE TABLE employee;
```

- Unlike `DELETE`, `TRUNCATE` drops the table and recreates it, making it a DDL command rather than a DML command.