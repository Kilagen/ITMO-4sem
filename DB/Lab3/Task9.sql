SELECT TOP 1 PR.Name
FROM [Sales].[SalesOrderDetail] SOD
LEFT JOIN [Production].[Product] PR
ON SOD.ProductID = PR.ProductID
GROUP BY PR.ProductID, PR.Name
ORDER BY 
	1.0*SUM(SOD.OrderQty)/
	DATEDIFF(
		D,
		MIN(PR.SellStartDate),
		ISNULL(MAX(PR.SellEndDate), GETDATE())
		) DESC