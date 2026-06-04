-- Retrieve the Invoice ID and invoice totals greater than $1.98 and less than $3.96.
SELECT InvoiceId, Total
FROM Chinook.Invoice
WHERE Total >= 1.98 AND Total <= 3.96
ORDER BY Total ASC;


-- ***Rachel's Notes***
-- Retrieve the invoice ID where the total is greater than $5.
-- :WHERE Total > 5;

-- Retrieve the first name and last name of customers that are located in Paris or Berlin.
-- :WHERE City = 'Paris' OR City = 'Berlin';

-- Retrieve the customer ID for individuals in Paris with invoice totals greater than $10.
-- :WHERE BillingCity = 'Paris' AND Total > 10;

-- Retrieve the Invoice ID and invoice totals between $1.98 and $3.96.
-- :WHERE Total >= 1.98 AND Total <= 3.96 :ORDER BY Total ASC;
-- or can use BETWEEN
-- :WHERE Total BETWEEN 1.98 AND 3.96 :ORDER BY Total ASC;

