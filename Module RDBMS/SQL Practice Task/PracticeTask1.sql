create table if not exists
  customers (
    customer_id serial primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) unique not null,
    city varchar(50) not null,
    country varchar(50) not null,
    registration_date date default current_date
  );

create table if not exists
  books (
    book_id serial primary key,
    title varchar(200) not null,
    author varchar(100) not null,
    genre varchar(50) not null,
    price numeric(10, 2) not null,
    publication_year smallint not null,
    stock_quantity smallint not null
  );


create table if not exists
  orders (
    order_id serial primary key,
    customer_id int references customers (customer_id) on delete cascade,
    book_id int references books (book_id) on delete cascade,
    order_date date,
    quantity smallint not null,
    total_amount NUMERIC(10, 2) not null
  )
  -- insert data into customers table 
insert into
  customers (
    first_name,
    last_name,
    email,
    city,
    country,
    registration_date
  ) VALUES ('John', 'Smith', 'john.smith@email.com', 'New York', 'USA', '2023-01-15'),
  ('Emma', 'Johnson', 'emma.j@email.com', 'London', 'UK', '2023-02-20'),
  ('Michael', 'Brown', 'mbrown@email.com', 'Toronto', 'Canada', '2023-01-10'),
  ('Sophia', 'Davis', 'sophia.d@email.com', 'Sydney', 'Australia', '2023-03-05'),
  ('James', 'Wilson', 'jwilson@email.com', 'New York', 'USA', '2023-02-28'),
  ('Oliver', 'Taylor', 'oliver.t@email.com', 'London', 'UK', '2023-04-12'),
  ('Ava', 'Anderson', 'ava.anderson@email.com', 'Los Angeles', 'USA', '2023-03-18'),
  ('William', 'Martinez', 'w.martinez@email.com', 'Madrid', 'Spain', '2023-01-25'),
  ('Isabella', 'Garcia', 'isabella.g@email.com', 'Mexico City', 'Mexico', '2023-02-14'),
  ('Lucas', 'Rodriguez', 'lucas.r@email.com', 'Buenos Aires', 'Argentina', '2023-03-30');



INSERT INTO books (
 title, author, genre, price, publication_year, stock_quantity
) VALUES
  ('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 12.99, 1925, 45),
  ('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 14.99, 1960, 32),
  ('1984', 'George Orwell', 'Science Fiction', 13.99, 1949, 28),
  ('Pride and Prejudice', 'Jane Austen', 'Romance', 11.99, 1813, 50),
  ('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 12.99, 1951, 22),
  ('Harry Potter and the Sorcerer Stone', 'J.K. Rowling', 'Fantasy', 19.99, 1997, 60),
  ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 15.99, 1937, 38),
  ('Brave New World', 'Aldous Huxley', 'Science Fiction', 13.99, 1932, 25),
  ('The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 29.99, 1954, 41),
  ('Animal Farm', 'George Orwell', 'Fiction', 10.99, 1945, 55),
  ('Fahrenheit 451', 'Ray Bradbury', 'Science Fiction', 12.99, 1953, 30),
  ('The Great Adventure', 'John Anderson', 'Fiction', 16.99, 2020, 18),
  ('Mystery in Paris', 'Marie Dubois', 'Mystery', 14.99, 2019, 27),
  ('Romance in Rome', 'Isabella Rossi', 'Romance', 13.99, 2021, 35);




INSERT INTO orders (
  order_id, customer_id, book_id, order_date, quantity, total_amount
) VALUES
  (1, 1, 1, '2023-05-10', 2, 25.98),
  (2, 1, 6, '2023-05-15', 1, 19.99),
  (3, 2, 3, '2023-05-12', 1, 13.99),
  (4, 3, 2, '2023-05-11', 3, 44.97),
  (5, 4, 7, '2023-05-13', 1, 15.99),
  (6, 5, 9, '2023-05-14', 2, 59.98),
  (7, 2, 4, '2023-05-16', 1, 11.99),
  (8, 6, 6, '2023-05-17', 2, 39.98),
  (9, 7, 1, '2023-05-18', 1, 12.99),
  (10, 8, 8, '2023-05-19', 1, 13.99),
  (11, 1, 10, '2023-06-01', 2, 21.98),
  (12, 3, 5, '2023-06-02', 1, 12.99),
  (13, 9, 11, '2023-06-03', 3, 38.97),
  (14, 10, 12, '2023-06-04', 1, 16.99),
  (15, 4, 13, '2023-06-05', 2, 29.98),
  (16, 5, 14, '2023-06-06', 1, 13.99),
  (17, 2, 6, '2023-06-07', 1, 19.99),
  (18, 7, 3, '2023-06-08', 2, 27.98);