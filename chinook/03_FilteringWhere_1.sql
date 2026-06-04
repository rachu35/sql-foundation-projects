-- Retrieve the first and lasts of al namel customers whose last end with a 'son'.
SELECT FirstName, LastName
FROM Chinook.Customer
WHERE LastName LIKE '%son';

-- ***Rachel's Notes***
-- Retrieve the first and last names of all customers located in Paris.
-- : WHERE City = 'Paris';

-- Retrieve the first and last names of all customers whose last name starts with a 'B'.
-- :WHERE LastName LIKE 'B%';

--Retrieve the first and last names of all customers whose last end with a 'son'.
-- :WHERE LastName LIKE '%son';