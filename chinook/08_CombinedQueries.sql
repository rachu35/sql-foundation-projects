-- Retrieve the highest-grossing artists.
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



-- ***Rachel's Notes***
-- Having a HAVING clause allows us to filter the results of our GROUP BY query based on the aggregated values. In this case, we are filtering for artists whose total sales exceed $25. This is useful for identifying the highest-grossing artists in our dataset.
