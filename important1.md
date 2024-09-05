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


### Creating user and granting access in MySQL

#### How to Create a User?
To create a new user in Postgres, use the following command:
```postgresql
CREATE USER <user_name> WITH PASSWORD <password>;
```
To create a new user in MySQL, use the following command:
```sql
CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
```

1. `CREATE USER`
This is the SQL command to create a new user in the database. It's followed by the user's credentials and connection details.

2. `'username'@'localhost'`
   - `'username'`: This is the name of the new database user being created. You can replace `'username'` with any valid identifier for the user.
   - `'localhost'`: This specifies the **host** from which the user can connect to the database.
   - `'localhost'` means the user can only connect from the machine where the MySQL server is running.
     - If you want the user to connect from any machine, you can replace `'localhost'` with `'%'`. Example: `'username'@'%'`.
     - You can also specify a specific IP address or domain to allow the user to connect only from that address.

3. `IDENTIFIED BY 'password'`
This specifies the **password** that the user must use when connecting to the database.
   - `'password'`: This is the string representing the password for the user. It should be replaced with the actual password you want to set for the user.

Example:

If you run:

```sql
CREATE USER 'john_doe'@'localhost' IDENTIFIED BY 'SecurePassword123';
```
  - A new user `john_doe` is created.
  - This user can only log in from the local machine (where the MySQL server is running).
  - The user will need to use the password `SecurePassword123` to authenticate.

Once the user is created, they have no permissions by default. You need to grant them appropriate privileges using the `GRANT` statement.

#### How to Grant privileges to a User?
To grant all the privilege to a user, use the following command:
```sql
GRANT ALL PRIVILEGES ON DATABASE dbname TO username;
```

To grant specific privilege to a user on a table:
```sql
GRANT SELECT, INSERT, UPDATE ON TABLE tablename TO username;
```

#### How to revoke privileges to a User?
To revoke all the privileges from a user, use the following command:
```sql
REVOKE ALL PRIVILEGES ON DATABASE dbname FROM username;
```

#### Flush Privileges: 
After granting or revoking permissions, it's good practice to reload the privileges.
```sql
FLUSH PRIVILEGES;
```
