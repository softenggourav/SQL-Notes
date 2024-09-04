### CRUD Operations in MySQL

CRUD stands for **Create**, **Read**, **Update**, and **Delete**—the four basic functions of persistent storage.

#### 1. Create
- **Command**: `INSERT`
- **Purpose**: Used to add new records to a table.

#### 2. Read
- **Command**: `SELECT`
- **Purpose**: Used to retrieve data from a table.

#### 3. Update
- **Command**: `UPDATE`
- **Purpose**: Used to modify existing records in a table.

#### 4. Delete
- **Command**: `DELETE` (Note: `DROP` is used to delete tables or databases, not individual records)
- **Purpose**: Used to remove records from a table.

---

### Creating a Table

To create a table in any database:

```sql
CREATE TABLE employee (
    name VARCHAR(50),
    age INT,
    salary INT
);
```

Or with more columns:

```sql
CREATE TABLE employee (
    firstname VARCHAR(20),
    middlename VARCHAR(20),
    lastname VARCHAR(20),
    age INT,
    salary INT,
    location VARCHAR(20)
);
```

---

### Inserting Values into a Table

To insert a value into the `employee` table:

```sql
INSERT INTO employee 
VALUES ('satish', 'kumar', 'sharma', 28, 10000, 'bangalore');
```

It is recommended, though not necessary, to specify the column names:

```sql
INSERT INTO employee (firstname, middlename, lastname, age, salary, location) 
VALUES ('kapil', 'kumar', 'sharma', 28, 10000, 'bangalore');
```

You can insert values without some columns:

```sql
INSERT INTO employee (firstname, lastname, age, salary, location) 
VALUES ('rajes\'h', 'sharma', 32, 20000, 'bangalore');
```

Or handle quotes differently:

```sql
INSERT INTO employee (firstname, lastname, age, salary, location) 
VALUES ('rajes"h', 'sharma', 32, 20000, 'bangalore');

INSERT INTO employee (firstname, lastname, age, salary, location) 
VALUES ('rajes/h', 'sharma', 32, 20000, 'bangalore');
```

All the above statements will work.

---

### NULL and NOT NULL Constraints

To create a table with `NOT NULL` constraints:

```sql
CREATE TABLE employee (
    firstname VARCHAR(20) NOT NULL,
    middlename VARCHAR(20),
    lastname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) NOT NULL
);
```

Inserting values without the `NOT NULL` columns will work:

```sql
INSERT INTO employee (middlename, lastname, age, salary, location) 
VALUES ('kumar', 'sharma', 20, 10000, 'bangalore');
```

---

### Default Values

To set default values for columns:

```sql
CREATE TABLE employee (
    firstname VARCHAR(20) NOT NULL,
    middlename VARCHAR(20),
    lastname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) DEFAULT 'bangalore'
);
```

Inserting a `NULL` value into a column with a default value will insert the default:

```sql
INSERT INTO employee (firstname, lastname, age, salary, location) 
VALUES ('kapil', 'sharma', 28, 10000, NULL);
```

If `NOT NULL` is enforced, trying to insert a `NULL` value will throw an error:

```sql
CREATE TABLE employee (
    firstname VARCHAR(20) NOT NULL,
    middlename VARCHAR(20),
    lastname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) NOT NULL DEFAULT 'bangalore'
);

-- The following query will throw an error because 'location' cannot be NULL:
INSERT INTO employee (firstname, lastname, age, salary, location) 
VALUES ('kapil', 'sharma', 28, 10000, NULL);
```