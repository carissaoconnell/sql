-- Write a query where we can find the names of the students who bought the book with id = 2. 
-- The results should be sorted by full_name, and you should build your query using the JOIN keyword.

-- Create the book table
create_book_table = "
CREATE TABLE book (
    id INTEGER PRIMARY KEY,
    isbn TEXT NOT NULL,
    book_name TEXT NOT NULL,
    genre TEXT NOT NULL,
    author TEXT NOT NULL,
    book_year INTEGER NOT NULL,
    book_count INTEGER NOT NULL,
    book_page INTEGER NOT NULL,
    rank REAL NOT NULL
);"

-- Create the student table
create_student_table = "
CREATE TABLE student (
    id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    gender TEXT NOT NULL,
    date_of_birth TEXT NOT NULL
);"

-- Create the staff table
create_staff_table = "
CREATE TABLE staff (
    id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    gender TEXT NOT NULL,
    date_of_birth TEXT NOT NULL
);"

-- Create the operation table
create_operation_table = "
CREATE TABLE operation (
    id INTEGER PRIMARY KEY,
    student_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    iss_date TEXT NOT NULL,
    return_date TEXT NOT NULL,
    return_indicator NUMERIC NOT NULL,
    FOREIGN KEY (book_id) REFERENCES book(id),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (staff_id) REFERENCES staff(id)
);"

insert_book_table = "
INSERT INTO book (book_name, isbn, genre, author, book_year, book_count, book_page, rank)
VALUES 
    ('The Metamorphosis', '0393347095', 'Novella', 'Franz Kafka', 2014, 2, 128, 4.4),
    ('Harry Potter And The Order Of The Phoenix', '0439358078', 'Fantasy', 'J.K. Rowling', 2004, 3, 896, 4.2),
    ('Anna Karenina', '0198800533', 'Realist Novel', 'Leo Tolstoy', 2017, 1, 896, 4.6);
";

insert_staff_table = "
INSERT INTO staff (full_name, gender, date_of_birth)
VALUES 
    ('Steve Smith', 'Male', '1992-04-23'),
    ('Ashley Miller', 'Female', '1995-01-16');
";

insert_student_table = "
INSERT INTO student (full_name, gender, date_of_birth)
VALUES 
    ('Mia Yang', 'Female', '1996-09-15'),
    ('Bob Lee', 'Male', '1997-12-13'),
    ('Eric Rampy', 'Male', '1995-08-21'),
    ('Stefany Ferenz', 'Female', '1996-04-01');
";

insert_operation_table = "
INSERT INTO operation (student_id, staff_id, book_id, iss_date, return_date, return_indicator)
VALUES 
    (3, 1, 1, date('now', '-4 day'), date('now', '+10 day'), 0),
    (1, 1, 3, date('now', '-1 day'), date('now', '+13 day'), 0),
    (2, 2, 2, date('now', '-1 day'), date('now', '+6 day'), 0),
    (4, 2, 2, date('now'), date('now', '+14 day'), 0);
";

update_staff_inf = "UPDATE staff 
    SET full_name = 'Ashley Bailey' 
    WHERE full_name = 'Ashley Miller';"

update_operation_inf = "UPDATE operation 
    SET return_date = DATE('now'), 
        return_indicator = TRUE
    WHERE student_id = 3 
        AND staff_id = 1 
        AND book_id = 1;"

update_book_inf = "UPDATE book 
    SET book_count = book_count + 1 
    WHERE book_name = 'The Metamorphosis';"

student_inf = "SELECT s.full_name 
    FROM student s 
    JOIN operation o 
        ON s.id = o.student_id 
        WHERE o.book_id = 2 
    ORDER BY s.full_name;"