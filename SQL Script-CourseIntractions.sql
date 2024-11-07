SELECT 
     --[InteractionID]
     -- ,[UserID]
      [CourseID]
      -- ,[ClickDate]
      ,[PurchaseAttemptDate]
      ,[PurchaseSuccess]
  FROM [UserRegistrations].[dbo].[CourseInteractions]
 order by CourseID;
