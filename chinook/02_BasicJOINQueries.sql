-- Retrieve the invoice IDs from each customer
SELECT 
    Customer.CustomerId,
    Customer.LastName,
    Invoice.InvoiceId
FROM Chinook.Customer
JOIN Chinook.Invoice ON Customer.State = Invoice.BillingState;

-- ***Rachel's Notes***
-- JOIN的概念是：找兩張表的共同欄位, 把資料接起來