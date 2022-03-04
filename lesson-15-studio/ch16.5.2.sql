-- ch16.5.2

-- 1. Return the mystery book titles and their ISBNs 
SELECT title, isbn
FROM book
WHERE genre_id = (SELECT genre_id FROM genre WHERE genres = "Mystery");

-- 2.  Return all of the titles and author’s first and last names for books written by authors who are currently living.
SELECT title, first_name, last_name
FROM book
INNER JOIN author ON book.author_id = author.author_id AND author.deathday IS NULL;