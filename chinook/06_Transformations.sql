-- Calculate the average track time in minutes
SELECT ROUND(AVG(Milliseconds)/60000,1)
FROM Chinook.Track;



-- ***Rachel's Notes***
-- Convert the first and last name to uppercase.
-- SELECT UPPER(FirstName), UPPER(LastName)

-- Round each total to two decimal places.
-- And, order the totals in descending order.
-- SELECT InvoiceId, ROUND(Total, 2)
-- FROM Chinook.Invoice
-- ORDER BY ROUND(Total, 2) DESC;

-- Sum the total column and round the sum to two decimal places.
-- And, group the results by customer ID.
-- SELECT CustomerId, ROUND(SUM(Total), 2)
-- FROM Chinook.Invoice
-- GROUP BY CustomerId;

-- Get the InvoiceDate for all Invoice IDs.
-- SELECT InvoiceId, YEAR(InvoiceDate), LPAD(MONTH(InvoiceDate), 2, '0'), LPAD(DAY(InvoiceDate), 2, '0')
-- FROM Chinook.Invoice;  
-- *LPAD() is used to add leading zeros to the month and day values, ensuring they are always two digits. This is important for consistent formatting of the date.*