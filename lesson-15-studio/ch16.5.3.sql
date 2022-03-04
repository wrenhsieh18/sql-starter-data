-- 16.5.3. Loan Out a Book 

-- 1. Change available to FALSE for the appropriate book. 
UPDATE book
SET available = FALSE
WHERE title = "Midnight's Children";

-- 2. Add a new row to the loan table with today’s date as the date_out and the ids in the row matching the appropriate patron_id and book_id. 
INSERT INTO loan (date_out, patron_id, book_id)
VALUES (
	CURDATE(), 
	(SELECT patron_id FROM patron WHERE first_name = "Sybil" AND last_name = "Costanza"), 
    (SELECT book_id FROM book WHERE title = "Midnight's Children")
    );

-- 3. Update the appropriate patron with the loan_id for the new row created in the loan table.
UPDATE patron
SET loan_id = (SELECT MAX(loan_id) FROM loan)
WHERE first_name = "Sybil" AND last_name = "Costanza";

