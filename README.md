# Library Database (MySQL)

## Description
A relational database system to manage books, members, and borrowing records.

## Features
- Track which books are borrowed
- Identify currently issued books using return_date
- Retrieve member and book details using JOIN

## Tables
- books
- members
- loans

## Example Query

```sql
SELECT members.name, books.title
FROM loans
JOIN members ON loans.member_id = members.member_id
JOIN books ON loans.book_id = books.book_id;
