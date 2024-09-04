### Foreign Key Constraint in MySQL

#### Overview

A **Foreign Key** is a field in one table that uniquely identifies a row in another table. This key establishes a relationship between two tables by linking the foreign key in the child table to the primary key in the parent table. The purpose of a foreign key is to ensure referential integrity between the tables.

- **Parent Table**: The table with the primary key that the foreign key references.
- **Child Table**: The table that contains the foreign key.

#### Example Schema

**Courses Table (Parent Table)**:

```sql
CREATE TABLE courses (
    course_id INT NOT NULL,
    course_name VARCHAR(30) NOT NULL,
    course_duration_months INT NOT NULL,
    course_fee INT NOT NULL,
    PRIMARY KEY (course_id)
);
```

**Students Table (Child Table)**:

```sql
CREATE TABLE students (
    student_id INT AUTO_INCREMENT,
    student_fname VARCHAR(30) NOT NULL,
    student_lname VARCHAR(30) NOT NULL,
    student_mname VARCHAR(30),
    student_email VARCHAR(30) NOT NULL,
    student_phone VARCHAR(15) NOT NULL,
    student_alternate_phone VARCHAR(15),
    enrollment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    selected_course INT NOT NULL DEFAULT 1,
    years_of_exp INT,
    student_company VARCHAR(30),
    batch_date VARCHAR(30) NOT NULL,
    source_of_joining VARCHAR(30) NOT NULL,
    location VARCHAR(30) NOT NULL,
    PRIMARY KEY (student_id),
    UNIQUE KEY (student_email),
    FOREIGN KEY (selected_course) REFERENCES courses(course_id)
);
```

#### Explanation of the `students` Table

- **`selected_course`**: This column is a foreign key that references the `course_id` column in the `courses` table. It ensures that any value in `selected_course` must exist in the `course_id` column of the `courses` table.

#### Inserting Data into the Tables

**Inserting Courses**:

```sql
INSERT INTO courses (course_id, course_name, course_duration_months, course_fee) VALUES
(1, 'big data', 6, 50000),
(2, 'web development', 3, 20000),
(3, 'data science', 6, 40000),
(4, 'devops', 1, 10000);
```

**Inserting Students**:

```sql
INSERT INTO students(student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp, student_company, batch_date, source_of_joining, location)
VALUES ('rohit', 'sharma', 'rohit@gmail.com', '9191919191', 4, 6, 'flipkart', '5-02-2021', 'linkedin', 'bangalore');

INSERT INTO students(student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp, student_company, batch_date, source_of_joining, location)
VALUES ('shikhar', 'dhawan', 'shikhar@gmail.com', '9393939393', 2, 6, 'google', '5-02-2021', 'linkedin', 'bangalore');

INSERT INTO students(student_fname, student_lname, student_email, student_phone, selected_course, years_of_exp, student_company, batch_date, source_of_joining, location)
VALUES ('rahul', 'dravid', 'rahul@gmail.com', '9494949494', 3, 8, 'quora', '5-02-2021', 'linkedin', 'chennai');
```

#### Understanding Foreign Key Constraints

- **Referential Integrity**: The foreign key constraint prevents actions that would destroy the link between the tables. For example, you cannot insert a `selected_course` in the `students` table that does not exist in the `course_id` of the `courses` table.

- **Cascade Operations**: If required, you can also define **cascade** operations for `DELETE` or `UPDATE` actions. This means that when a record in the parent table is deleted or updated, the corresponding records in the child table are also deleted or updated.

#### Summary

- **Foreign Key**: Ensures referential integrity by linking a column in one table to the primary key of another table.
- **Parent Table**: The table that holds the primary key (e.g., `courses`).
- **Child Table**: The table that holds the foreign key (e.g., `students`).

#### SQL Constraints Recap

- **NOT NULL**: Ensures that a column cannot have a NULL value.
- **PRIMARY KEY**: Uniquely identifies each record in a table.
- **UNIQUE KEY**: Ensures all values in a column are different.
- **FOREIGN KEY**: Ensures referential integrity between two tables.
- **CHECK Constraint**: Validates that the values in a column meet a specific condition (Note: Not supported in MySQL).