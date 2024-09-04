### Introducing Unique Values in MySQL

#### Creating a Table with a Primary Key

To create a table with a primary key that uniquely identifies each record:

```sql
CREATE TABLE employee (
    id INT AUTO_INCREMENT,
    firstname VARCHAR(20) NOT NULL,
    middlename VARCHAR(20),
    lastname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(20) NOT NULL DEFAULT 'bangalore',
    PRIMARY KEY(id)
);
```

Inserting a record into this table:

```sql
INSERT INTO employee (firstname, middlename, lastname, age, salary) 
VALUES ('kapil', 'kumar', 'sharma', 28, 10000);
```

#### Primary Key

- **Primary Key**:
    - A primary key uniquely identifies each record in a table.
    - A table can have only one primary key.
    - A primary key cannot hold any `NULL` values.
    - Use a primary key when you need to distinctly and uniquely identify each record in a table.

#### Unique Key

- **Unique Key**:
    - Similar to a primary key, a unique key ensures that the values in a column or a set of columns are unique across all records.
    - Unlike a primary key, a unique key can hold `NULL` values.
    - In MySQL, a unique key can hold any number of `NULL` values, though in some other databases, a unique key may hold only one `NULL` value.
    - The purpose of a unique key is to prevent duplicate values in the specified column(s).

- A table can have multiple unique keys but only one primary key.

#### Example of Creating a Table with a Composite Primary Key

To create a table where the combination of `firstname` and `lastname` serves as the primary key:

```sql
CREATE TABLE employee (
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY(firstname, lastname)
);
```

Inserting a record into this table:

```sql
INSERT INTO employee (id, firstname, lastname, age) 
VALUES (2, 'kapil', 'sharma', 30);
```

#### Example of Creating a Table with a Unique Key

To create a table with a unique key on the `id` column:

```sql
CREATE TABLE employee (
    id INT UNIQUE KEY,
    firstname VARCHAR(20),
    lastname VARCHAR(20),
    age INT NOT NULL
);
```

This structure ensures that the `id` values are unique across all records.