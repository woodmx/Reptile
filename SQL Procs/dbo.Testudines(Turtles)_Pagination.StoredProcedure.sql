USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Testudines(Turtles)_Pagination]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	paginate turtles

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Testudines(Turtles)_Pagination]
					@PageIndex int
				   ,@PageSize int

AS
/*
	DECLARE @PageIndex int = 0
		   ,@PageSize int = 5

	EXECUTE [dbo].[Testudines(Turtles)_Pagination]
				@PageIndex 
			   ,@PageSize 
*/
BEGIN

	   DECLARE @offset int = @PageIndex * @PageSize

		SELECT t.[Id] as TurtleId
			  ,t.[Name]
			  ,t.[Habitat]
			  ,t.[Diet]
			  ,t.[Lifespan]
			  ,t.[TypeId]
			  ,r.[Species]

			  ,TotalCount = COUNT(1) Over()

		  FROM [dbo].[Testudines(Turtles)] as t
		  INNER JOIN [dbo].[Reptiles] as r
			ON t.[TypeId] = r.[Id]

	  ORDER BY t.[Id]

		OFFSET @offset Rows
	FETCH NEXT @PageSize Rows ONLY

END
GO
