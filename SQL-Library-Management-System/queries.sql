-- View all books
SELECT * FROM Books;

-- Books with author name
SELECT Books.title, Authors.author_name
FROM Books
JOIN Authors
ON Books.author_id = Authors.author_id;

-- Members who borrowed books
SELECT Members.member_name, Books.title
FROM Borrow
JOIN Members ON Borrow.member_id = Members.member_id
JOIN Books ON Borrow.book_id = Books.book_id;

-- Count total books
SELECT COUNT(*) FROM Books;

-- Find expensive book
SELECT * FROM Books
ORDER BY price DESC;