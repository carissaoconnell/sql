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