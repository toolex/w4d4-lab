DROP TABLE students;

CREATE TABLE students(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  age INT8,
  house VARCHAR(255)
);
