SELECT  
    MIN([CompletionID]) AS CompletionID,  
    [UserID],
    [CourseID],
    CAST(CompletionDate AS DATE) AS CompletionDate,
    (SUM(CASE WHEN CompletionStatus = 'Completed' THEN 1 ELSE 0 END) * 100.0 / COUNT(CourseID)) AS CompletionRate
FROM 
    [UserRegistrations].[dbo].[CourseCompletion]
WHERE 
    CAST(CompletionDate AS DATE) IS NOT NULL
GROUP BY 
    [UserID],
    [CourseID],
    CAST(CompletionDate AS DATE)
ORDER BY 
    CompletionDate;
