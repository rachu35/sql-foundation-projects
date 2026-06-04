-- Retrieve all the artist names and their albums.
SELECT 
    a.Name AS 'Artist Name', al.Title AS 'Album Title'
FROM Chinook.Artist a
JOIN Chinook.Album al ON a.ArtistID = al.ArtistID;


-- ***Rachel's Notes***
-- Retrieve the invoice IDs from each customer
-- SELECT 
--     c.CustomerID, c.LastName, i.InvoiceID
-- FROM Chinook.Customer c
-- JOIN Chinook.Invoice i ON c.State = i.BillingState
-- *c,i是table的別名