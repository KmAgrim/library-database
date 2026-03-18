-- View all borrowing records with member names and book titles
SELECT members.name, books.title
FROM loans
JOIN members ON loans.member_id = members.member_id
JOIN books ON loans.book_id = books.book_id;

-- View currently borrowed books (not yet returned)
SELECT members.name, books.title
FROM loans
JOIN members ON loans.member_id = members.member_id
JOIN books ON loans.book_id = books.book_id
WHERE loans.return_date IS NULL;

-- Find overdue books
SELECT members.name, books.title, loans.due_date
FROM loans
JOIN members ON loans.member_id = members.member_id
JOIN books ON loans.book_id = books.book_id
WHERE loans.return_date IS NULL
AND loans.due_date < CURDATE();
