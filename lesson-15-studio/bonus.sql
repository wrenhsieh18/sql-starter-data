-- 1. Return the counts of the books of each genre. Check out the documentation to see how this could be done! 
SELECT genres, COUNT(*)
FROM book
INNER JOIN genre ON book.genre_id = genre.genre_id
GROUP by genres

-- 2. A reference book cannot leave the library. How would you modify either the reference_book table 
-- or the book table to make sure that doesn’t happen? Try to apply your modifications.

