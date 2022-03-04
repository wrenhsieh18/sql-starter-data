SELECT first_name, last_name, genres
FROM patron
INNER JOIN book
INNER JOIN genre
INNER JOIN loan 
ON 		genre.genre_id = book.genre_id 
	AND patron.patron_id = loan.patron_id 
	AND loan.book_id = book.book_id 
	AND loan.date_in IS NULL;

