SELECT TOP 10
    p.Name AS ProductName,
    pc.Name AS Category,
    SUM(sod.LineTotal) AS TotalRevenue,
    SUM(sod.OrderQty) AS UnitsSold
FROM SalesLT.SalesOrderDetail sod
JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
JOIN SalesLT.ProductCategory pc ON p.ProductCategoryID = pc.ProductCategoryID
GROUP BY p.Name, pc.Name
ORDER BY TotalRevenue DESC;