SELECT loans.member_id, loans.book_id, members.name, books.title
FROM loans
JOIN members ON loans.member_id = members.member_id
JOIN books ON loans.book_id = books.book_id;
