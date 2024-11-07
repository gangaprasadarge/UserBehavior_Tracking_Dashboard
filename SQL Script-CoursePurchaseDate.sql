SELECT 
    [UserID],
    [CourseID],
    CAST(PurchaseDate AS DATE) AS PurchaseDate,
    SUM(PurchaseAmount) AS TotalRevenue,
    [PurchaseType]
FROM 
    [UserRegistrations].[dbo].[CoursePurchases]
GROUP BY 
    PurchaseDate, 
    [UserID], 
    [CourseID], 
    [PurchaseType]
ORDER BY 
    PurchaseDate;
