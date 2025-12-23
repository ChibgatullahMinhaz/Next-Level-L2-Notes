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