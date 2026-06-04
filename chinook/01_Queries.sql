-- Get all the data from the Employee table.
-- SELECT *(the columns we want to see)
-- From database.tables
-- in Calgary, and sort the results by last name in ascending order.

SELECT FirstName, LastName, Title, City 
FROM Chinook.Employee
WHERE City = 'Calgary'
ORDER BY LastName ASC;