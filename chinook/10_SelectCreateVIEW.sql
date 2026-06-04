-- SELECT CREATE VIEW

SELECT * FROM Chinook.view_artisttotalsales_v2
WHERE TotalArtistSales > 25
ORDER BY TotalArtistSales DESC;