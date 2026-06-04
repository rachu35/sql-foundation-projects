-- CREATE VIEW AS
-- Retrieve the highest-grossing artists.

CREATE VIEW Chinook.View_ArtistTotalSales_v2 AS
SELECT 
    ar.Name AS ArtistName, 
    SUM(il.UnitPrice * il.Quantity) AS TotalArtistSales
FROM Chinook.Artist ar
JOIN Chinook.Album al ON ar.ArtistId = al.ArtistId
JOIN Chinook.Track t ON al.AlbumId = t.AlbumId
JOIN Chinook.InvoiceLine il ON t.TrackId = il.TrackId
GROUP BY ar.Name
HAVING SUM(il.UnitPrice * il.Quantity) > 50
ORDER BY TotalArtistSales DESC;