-- CREATE TABLE sql_terminology
CREATE TABLE sql_terminology (
  id CHAR(36) PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  description TEXT NOT NULL,
  example TEXT
);

-- INSERT INTO sql_terminolgy table
INSERT INTO sql_terminology (id, name, description, example)
VALUES (UUID(), 'Column Constraints', 'Column Constraints are rules applied to the values of individual columns.',
'CREATE TABLE student (
  id INTEGER PRIMARY KEY,
  name TEXT UNIQUE,
  grade INTEGER NOT NULL,
  age INTEGER DEFAULT 10
);');

-- INSERT INTO sql_terminolgy table
INSERT INTO sql_terminology (id, name, description)
VALUES (UUID(), 'Operator', 'In SQL, an operator is a reserved word or a character used primarily in an SQL statement WHERE clause to perform operation(s), such as arithmetic, logical, or comparison operations. Operators are used to specify conditions in an SQL statement and to serve as conjunctions for multiple conditions in a statement.');

-- INSERT INTO sql_terminolgy table
INSERT INTO sql_terminology (id, name, description)
VALUES (UUID(), 'Clause', 'Part of a SQL statement that sets specific instructions to be performed on the database. A clause performs a specific function and is used to manipulate and retrieve data.');

-- INSERT INTO sql_terminolgy table
INSERT INTO sql_terminology (id, name, description)
VALUES (UUID(), 'Statement', 'A SQL statement is a command given to the database that executes an action on the database such as CREATE, INSERT, UPDATE, DELETE, ALTER or SELECT. All SQL queries are SQL statements, but not all SQL statements are SQL queries.');

-- INSERT INTO sql_terminolgy table
INSERT INTO sql_terminology (id, name, description)
VALUES (UUID(), 'Query', 'A SQL query is a SQL statement that requests the retrival of specific data from the database. Usually performed with SELECT. All SQL queries are SQL statements, but not all SQL statements are SQL queries.');

INSERT INTO sql_terminology (id, name, description)
VALUES (UUID(), 'NULL', 'A column with no value is NULL. A column with value is NOT NULL.')

-- INSERT INTO sql_terminology (id, name, description)
-- VALUES (UUID(), '', '')

-- CREATE TABLE sql_statements
CREATE TABLE sql_statements (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  description TEXT NOT NULL,
  example TEXT
);

-- INSERT INTO sql_statements table
INSERT INTO sql_statements (name, description)
VALUES ('CREATE TABLE', 'The CREATE TABLE statement creates a new table in a database. It allows one to specify the name of the table and the name of each column in the table.');

-- INSERT INTO sql_statements table
INSERT INTO sql_statements (name, description)
VALUES ('INSERT INTO', 'INSERT INTO statements are used to add a new row to a table.');

-- INSERT INTO sql_statements table
INSERT INTO sql_statements (name, description)
VALUES ('ALTER TABLE', 'ALTER TABLE is used to modify the columns of an existing table. Combined with the corresponding clause ALTER TABLE can be used to add, drop (delete), modify, or rename a column, add a primary key, drop a primary key, add a foreign key, rename a table, or add a check constraint.' );

-- INSERT INTO sql_statements table
INSERT INTO sql_statements (name, description)
VALUES ('DELETE', 'The DELETE statement is used to delete records (rows) in a table. The WHERE clause specifies which record or records that should be deleted. If the WHERE clause is omitted, all records will be deleted.');

-- INSERT INTO sql_statements table
INSERT INTO sql_statements (name, description)
VALUES ('UPDATE', 'The UPDATE statement is used to edit records (rows) in a table. It includes a SET clause that indicates the column to edit and a WHERE clause for specifying the record(s).');

INSERT INTO sql_statements table
INSERT INTO sql_statements (name, description)
VALUES ('SELECT', 'A SELECT statement queries the database for data from selected table based on any operators and/or clauses used in the SELCT statement.');

-- INSERT INTO sql_statements table
-- ALTER TABLE sql_statements (name, description)
-- VALUES ('', '');

CREATE TABLE column_constraints (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  description TEXT NOT NULL,
  example TEXT
);

INSERT INTO column_constraints (name, description, example)
VALUES ('PRIMARY KEY', 'Used to uniquely identify the row.', 'CREATE TABLE example_table (
  id INTEGER PRIMARY KEY,
);');

INSERT INTO column_constraints (name, description, example)
VALUES ('FOREIGN KEY', 'A column or combination of columns that is used to establish and enforce a link between the data in two tables to control the data that can be stored in the foreign key table.', 'CREATE TABLE example_table (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);');

INSERT INTO column_constraints (name, description, example)
VALUES ('UNIQUE', 'UNIQUE dictates that each value in the row must be different (unique).', 'CREATE TABLE example_table (
  id INT AUTO_INCREMENT PRIMARY KEY,
  example_name VARCHAR(30) UNIQUE
);');

INSERT INTO column_constraints (name, description, example)
VALUES ('NOT NULL', 'NOT NULL dictates that a row must have a value.', 'CREATE TABLE example_table (
  id INT AUTO_INCREMENT PRIMARY KEY,
  example_name VARCHAR(30) UNIQUE NOT NULL
);');

INSERT INTO column_constraints (name, description, example)
VALUES ( 'DEFAULT', 'Assigns a default vaue for the row when one is not specified.', 'CREATE TABLE example_table (
  id INT AUTO_INCREMENT PRIMARY KEY,
  example_num INTEGER DEFAULT 0
);' );


-- CREATE TABLE for SQL Operators
CREATE TABLE sql_operators (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30),
  description TEXT,
  example TEXT
);

-- INSERT INTO sql_operators table
INSERT INTO sql_operators (name, description, example)
VALUES ('AND', 'Allows multiple conditions to be combined. Records must match all conditions joined by AND to be included in query results.', '
SELECT * FROM example_table
WHERE name = "example name" 
  AND description = "example_description");'
);

INSERT INTO sql_operators (name, description, example)
VALUES ('OR', 'Allows multiple conditions to be combined. Records matching any of the combined condtions will be returned in query results', 'SELECT name
FROM customers 
WHERE state = "CA" 
   OR state = "NY";'
);

INSERT INTO sql_operators (name, description, example)
VALUES ('LIKE', 'The LIKE operator can be used inside of a WHERE clause to match a specified pattern.', '
SELECT name
FROM movies
WHERE name LIKE 'Star%';'
);

INSERT INTO sql_operators (name, description, example)
VALUES ('BETWEEN', 'The BETWEEN operator can be used to filter by a range of values. The range of values can be text, numbers, or date data. ', '
SELECT *
FROM movies
WHERE year BETWEEN 1980 AND 1990;'
);

-- INSERT INTO sql_operators (name, description, example)
-- VALUES ('', '', '');


-- CREATE TABLE for SQL Clauses
CREATE TABLE sql_clauses (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30),
  description TEXT,
  example TEXT
);

INSERT INTO sql_clauses (name, description, example)
VALUES ('AS', 'Allows columns or tables to be renamed in query results.', '
SELECT example_name AS "display_name"
FROM example_table;'
);

INSERT INTO sql_clause (name, description, example)
VALUES ('ORDER BY', 'The ORDER BY clause can be used to sort the result set by a particular column either alphabetically or numerically. It can be ordered in two ways: DESC is a keyword used to sort the results in descending order. ASC is a keyword used to sort the results in ascending order (default).', '
SELECT *
FROM contacts
ORDER BY birth_date DESC;'
);

INSERT INTO sql_clause (name, description, example)
VALUES ('DISTINCT', 'A query using the DISTINCT clause will only reutn unique results.', '
SELECT DISTINCT example_data
FROM example_table;'
);

INSERT INTO sql_clause (name, description, example)
VALUES ('LIMIT', 'The LIMIT clause is used to limit query results to a specified number of rows.', '
SELECT *
FROM example_table
LIMIT 10;'
);

INSERT INTO sql_clause (name, description, example)
VALUES ('WHERE', 'Used to filter records that match a specified condition.', '
SELECT *
FROM example_table
WHERE rating > 7;'
);

INSERT INTO sql_clause (name, description, example)
VALUES ('GROUP BY', '', '');

-- INSERT INTO sql_clause (name, description, example)
-- VALUES ('', '', '');

-- CREATE TABLE for SQL Wildcards 
CREATE TABLE sql_wildcards (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30),
  description TEXT,
  example TEXT
);

INSERT INTO sql_wildcards (name, description, example)
VALUES ('%', 'Can be used in a LIKE operator pattern to match zero or more unspecified characters', 'SELECT name
FROM movies
WHERE name LIKE "The%";'
);

INSERT INTO sql_wildcards (name, description, example)
VALUES ('_', 'Used in a LIKE operator pattern to match any single unspecified character.', '
SELECT name
FROM movies
WHERE name LIKE "_ove";'
);

-- CREATE TABLE for SQL Aggregate Functions 
CREATE TABLE sql_aggregate_functions (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30),
  description TEXT,
  example TEXT
);

INSERT INTO sql_aggregate_functions (name, description, example)
VALUES ('SUM()', 'The SUM', '');

INSERT INTO sql_aggregate_functions (name, description, example)
VALUES ('', '', '');

INSERT INTO sql_aggregate_functions (name, description, example)
VALUES ('', '', '');

INSERT INTO sql_aggregate_functions (name, description, example)
VALUES ('', '', '');

INSERT INTO sql_aggregate_functions (name, description, example)
VALUES ('', '', '');

-- INSERT INTO sql_aggregate_functions (name, description, example)
-- VALUES ('', '', '');