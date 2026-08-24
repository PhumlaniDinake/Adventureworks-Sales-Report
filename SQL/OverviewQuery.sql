SELECT 
    COUNT(DISTINCT soh.SalesOrderID) AS TotalOrders,
    SUM(soh.TotalDue) AS TotalRevenue,
    AVG(soh.TotalDue) AS AvgOrderValue
FROM SalesLT.SalesOrderHeader soh;