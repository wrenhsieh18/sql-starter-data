-- 16.5.4. Check a Book Back In

-- 1. Change available to TRUE for the appropriate book.
UPDATE book
SET available = TRUE
WHERE title = "The Joy Luck Club";


-- 2. Update the appropriate row in the loan table with today’s date as the date_in.
UPDATE loan
SET date_in = CURDATE()
WHERE book_id = (SELECT book_id FROM book WHERE title = 'The Joy Luck Club');


-- 3. Update the appropriate patron changing loan_id back to null
UPDATE patron
SET loan_id = NULL
WHERE patron_id = (
					SELECT patron_id FROM loan WHERE loan_id = (
																SELECT MAX(loan_id) FROM loan 
																WHERE book_id = (
																				SELECT book_id FROM book 
																				WHERE title = "The Joy Luck Club")
                                                                )
                    )








