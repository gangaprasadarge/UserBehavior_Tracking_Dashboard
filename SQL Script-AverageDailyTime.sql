SELECT TOP (1000) 
    [UserID],
    CAST(SessionStartTime AS DATE) AS SessionDate,
    AVG(DATEDIFF(SECOND, SessionStartTime, SessionEndTime)) AS AvgTimeSpentInSeconds,
    [DeviceType]
FROM 
    [UserRegistrations].[dbo].[AppEngagement]
GROUP BY 
    CAST(SessionStartTime AS DATE), 
    [UserID], 
    [DeviceType]
ORDER BY 
    SessionDate;
