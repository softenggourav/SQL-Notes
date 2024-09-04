### Creating and Managing Databases in MySQL

#### How to Create a Database?
To create a new database, use the following command:
```sql
CREATE DATABASE <database_name>;
```

#### How to See All the Created Databases?
To list all databases in the MySQL server:
```sql
SHOW DATABASES;
```

#### How to Select a Database for Future Operations?
To use a specific database and make changes to it:
```sql
USE <database_name>;
```

#### How to Delete a Database?
To delete an existing database:
```sql
DROP DATABASE <database_name>;
```

---

### Working with Tables in MySQL

#### How to Create a Table in Any Database?
To create a table in the selected database:
```sql
CREATE TABLE employee (
    name VARCHAR(50),
    age INT,
    salary INT
);
```
- **Note**: The `VARCHAR` data type can contain a maximum of 255 characters.

#### How to See All Tables in a Database?
To list all tables in the currently selected database:
```sql
SHOW TABLES;
```

#### How to See the Structure of Any Table?
To describe the structure of a table, you can use either of the following commands:
```sql
DESCRIBE <table_name>;
```
**Or**:
```sql
DESC <table_name>;
```

---

### Database Information and Management

#### How to Check Which Database You Are In?
To check the current selected database:
```sql
SELECT DATABASE();
```

#### How to Unselect Any Database?
There is no direct command to unselect a database. You can either:
- Quit the MySQL session using the `quit` command, or
- Select another database using the `USE` command.