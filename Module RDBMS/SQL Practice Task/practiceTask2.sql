--create student table 
create table if not exists students(
    student_id serial primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(200) not null unique,
    phone varchar(20),
    country varchar(150) not null, 
    enrollment_date date not null
)
--create course table
create table if not exists courses (
    course_id serial primary key, 
    course_title varchar(150) not null,
    category varchar(50) not null,
    price numeric(10, 2) not null,
    instructor varchar(100) not null,
    published_year int not null
)
--create table for enrollments
create table if not exists enrollments(
    enrollment_id serial primary key,
    student_id int references students(student_id) not null on delete cascade,
    course_id int references courses(course_id) not null on delete cascade,
    enrollment_date date not null,
    progress_percentage date ,
    paid_amount numeric(10,2)
)

insert into students (first_name, last_name, email, phone, country, enrollment_date) VALUES
('Rahim', 'Uddin', 'rahim@email.com', '01711111111', 'Bangladesh', '2023-01-10'),
('Karim', 'Ahmed', 'karim@email.com', NULL, 'Bangladesh', '2023-01-15'),
('Sara', 'Khan', 'sara@email.com', '01822222222', 'Pakistan', '2023-02-01'),
('John', 'Smith', 'john@email.com', NULL, 'USA', '2023-02-10'),
('Emma', 'Brown', 'emma@email.com', '01933333333', 'UK', '2023-02-20'),
('Ayaan', 'Ali', 'ayaan@email.com', NULL, 'India', '2023-03-05'),
('Lina', 'Rahman', 'lina@email.com', '01644444444', 'Bangladesh', '2023-03-12'),
('Mark', 'Taylor', 'mark@email.com', NULL, 'Australia', '2023-03-25'),
('Sophia', 'Lee', 'sophia@email.com', '01555555555', 'USA', '2023-04-01'),
('Daniel', 'Martinez', 'daniel@email.com', NULL, 'Spain', '2023-04-10');



insert into courses(course_title, category, price, instructor, published_year)
VALUES
('Complete SQL Bootcamp', 'Database', 49.99, 'John Carter', 2021),
('Advanced JavaScript', 'Programming', 59.99, 'Sarah Miller', 2020),
('Python for Data Science', 'Data Science', 69.99, 'David Kim', 2022),
('Web Development with React', 'Programming', 54.99, 'Emily Stone', 2021),
('Machine Learning Basics', 'AI', 79.99, 'Andrew Ng', 2019),
('Cloud Computing Fundamentals', 'Cloud', 64.99, 'James Allen', 2020),
('UI/UX Design Essentials', 'Design', 39.99, 'Laura Scott', 2022),
('DevOps for Beginners', 'DevOps', 74.99, 'Michael Brown', 2023);


insert into enrollments (student_id, course_id, enrollment_date, progress_percentage, paid_amount)
VALUES
(1, 1, '2023-05-01', 80, 49.99),
(2, 2, '2023-05-03', NULL, 59.99),
(3, 3, '2023-05-05', 60, 69.99),
(5, 4, '2023-05-10', 40, 54.99),
(4, 1, '2023-05-07', 100, 49.99),
(6, 5, '2023-05-12', NULL, 79.99),
(7, 2, '2023-06-01', 90, 59.99),
(8, 6, '2023-06-02', 30, 64.99),
(8, 6, '2023-06-02', 30, 64.99),
(8, 6, '2023-06-02', 30, 64.99),
(9, 3, '2023-06-03', 70, 69.99),
(10, 7, '2023-06-04', NULL, 39.99),
(1, 8, '2023-06-05', 20, 74.99),
(2, 1, '2023-06-06', 50, 49.99),
(3, 6, '2023-06-07', NULL, 64.99),
(4, 4, '2023-06-08', 85, 54.99),
(5, 5, '2023-06-09', 60, 79.99);
