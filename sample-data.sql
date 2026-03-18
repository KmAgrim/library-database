INSERT INTO books (title, author, published_year) VALUES
('The Hobbit', 'J.R.R. Tolkien', 1937),
('1984', 'George Orwell', 1949),
('Clean Code', 'Robert C. Martin', 2008);

INSERT INTO members (name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com');

INSERT INTO loans (member_id, book_id, borrow_date, return_date) VALUES
(1, 1, '2026-03-17', NULL),
(2, 3, '2026-03-16', NULL);
