-- =========================================
-- GitHub SQL Language Detection Test
-- =========================================

-- Drop tables if exist (safe rerun)
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;

-- =========================================
-- STUDENTS TABLE
-- =========================================
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    country VARCHAR(50) NOT NULL,
    enrollment_date DATE NOT NULL
);

-- =========================================
-- COURSES TABLE
-- =========================================
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_title VARCHAR(150) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price >= 0),
    instructor VARCHAR(100) NOT NULL,
    published_year INT NOT NULL CHECK (published_year >= 1900)
);

-- =========================================
-- ENROLLMENTS TABLE
-- =========================================
CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
    course_id INT NOT NULL REFERENCES courses(course_id) ON DELETE CASCADE,
    enrollment_date DATE NOT NULL,
    progress_percentage INT CHECK (progress_percentage BETWEEN 0 AND 100),
    paid_amount NUMERIC(10,2) CHECK (paid_amount >= 0),
    UNIQUE (student_id, course_id)
);

-- =========================================
-- SAMPLE DATA INSERT
-- =========================================
INSERT INTO students (first_name, last_name, email, phone, country, enrollment_date) VALUES
('Rahim', 'Uddin', 'rahim@gmail.com', '01700000001', 'Bangladesh', '2024-01-10'),
('Karim', 'Ahmed', 'karim@gmail.com', '01700000002', 'Bangladesh', '2024-01-12'),
('John', 'Doe', 'john@gmail.com', NULL, 'USA', '2024-02-01');

INSERT INTO courses (course_title, category, price, instructor, published_year) VALUES
('SQL Mastery', 'Database', 49.99, 'Alex Carter', 2023),
('Backend with Node.js', 'Backend', 79.99, 'Sarah Smith', 2024),
('System Design Basics', 'Architecture', 59.99, 'Michael Lee', 2022);

INSERT INTO enrollments (student_id, course_id, enrollment_date, progress_percentage, paid_amount) VALUES
(1, 1, '2024-01-15', 60, 49.99),
(1, 2, '2024-01-20', 30, 79.99),
(2, 1, '2024-01-18', 90, 49.99),
(3, 3, '2024-02-05', NULL, 59.99);

-- =========================================
-- BASIC SELECT QUERIES
-- =========================================
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollments;

-- =========================================
-- JOIN QUERIES
-- =========================================
SELECT
    s.first_name,
    s.last_name,
    c.course_title,
    e.progress_percentage
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

-- =========================================
-- AGGREGATION
-- =========================================
SELECT
    c.category,
    COUNT(e.enrollment_id) AS total_enrollments,
    SUM(e.paid_amount) AS total_revenue
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.category;

-- =========================================
-- SUBQUERY
-- =========================================
SELECT *
FROM students
WHERE student_id IN (
    SELECT student_id
    FROM enrollments
    WHERE progress_percentage >= 80
);

-- =========================================
-- UPDATE & DELETE
-- =========================================
UPDATE enrollments
SET progress_percentage = 100
WHERE progress_percentage >= 90;

DELETE FROM enrollments
WHERE paid_amount = 0;

-- =========================================
-- END OF SQL TEST FILE
-- =========================================
