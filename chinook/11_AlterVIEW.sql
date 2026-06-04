-- ALTER VIEW
-- Retrieve the highest-grossing artists.

ALTER VIEW Chinook.View_ArtistTotalSales_v2 AS
SELECT 
    ar.Name AS ArtistName, 
    SUM(il.UnitPrice * il.Quantity) AS TotalArtistSales
FROM Chinook.Artist ar
JOIN Chinook.Album al ON ar.ArtistId = al.ArtistId
JOIN Chinook.Track t ON al.AlbumId = t.AlbumId
JOIN Chinook.Genre g ON t.GenreId = g.GenreId
JOIN Chinook.InvoiceLine il ON t.TrackId = il.TrackId
WHERE g.Name NOT IN ('TV Showes','Drama','Sci Fi & Fantasy','Comedy','Horror','Science Fiction')
GROUP BY ar.Name;
