SELECT [Name]
FROM [Customer]
WHERE [CustomerId] IN 
(
SELECT DISTINCT [CustomerId] 
FROM [ShoppingList] 
WHERE [ProductName] LIKE 'milk'
AND [CustomerId] NOT IN
(
SELECT [CustomerId] 
FROM [ShoppingList] 
WHERE [ProductName] LIKE 'sour cream' AND [PurchaiseDatetime] >= DATEADD(MONTH, -1, GETDATE())
)
)
