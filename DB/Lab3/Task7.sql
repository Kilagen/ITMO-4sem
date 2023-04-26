SELECT Vend.Name, COUNT(PrVend.ProductID)
FROM [Purchasing].[ProductVendor] PrVend
LEFT JOIN [Purchasing].[Vendor] Vend
ON PrVend.BusinessEntityID = Vend.BusinessEntityID
GROUP BY Vend.BusinessEntityID, Vend.Name