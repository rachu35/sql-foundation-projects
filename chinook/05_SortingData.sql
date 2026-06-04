-- Retrieve the name of each playlist and the number of tracks in each playlist.
-- And, sort the results in descending order by the number of tracks.
SELECT Playlist.Name AS PlaylistName, 
        COUNT(PlaylistTrack.TrackId) AS TrackCount
FROM Chinook.PlaylistTrack

JOIN Chinook.Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId

GROUP BY Playlist.Name

ORDER BY TrackCount DESC;


-- ***Rachel's notes:***
-- List all arist in ascending order.
-- :FROM Chinook.Artist -- ORDER BY NAME ASC;

-- Retrieve and sort the song tracks in ascending order by AlbumID and track name.
-- :SELECT AlbumID, NAME
-- :FROM Chinook.Track
-- :ORDER BY AlbumID ASC, NAME ASC;


-- ***Note for: GROUP BY + COUNT + Aggregate Function
-- JOIN是把playlistTrack和playlst接起來(用共同有的playlistId)
-- COUNT是有幾首歌, AS幫欄位取名字
-- GROUP BY 是把 playlist 名字分組, 所以music有6580筆資料, 就會變同一組
-- ORDER BY 是把結果照trackCount從大到小排序
-- aggregation（聚合分析）就是結合以上的語法

