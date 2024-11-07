SELECT
      [UserID],
      [QuizID],
      CAST(ParticipationDate AS DATE) AS QuizDate,
      COUNT(ParticipationID) AS TotalQuizParticipations,
      AVG([QuizScore]) AS AvgQuizScore  -- Assuming you want the average score
FROM 
      [UserRegistrations].[dbo].[QuizParticipation]
GROUP BY 
      [UserID],
      [QuizID],
      CAST(ParticipationDate AS DATE)
ORDER BY 
      QuizDate;
