SELECT 
    [UserID],
    CAST(PurchaseAttemptDate AS DATE) AS RegDate,
    [CourseID],
    [PurchaseSuccess]
FROM 
    [UserRegistrations].[dbo].[CourseInteractions]
GROUP BY 
    [UserID],                        -- Include UserID here
    CAST(PurchaseAttemptDate AS DATE), 
    [CourseID], 
    [PurchaseSuccess]
ORDER BY 
    RegDate;
