USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Testudines(Turtles)_Search_Pagination]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	search and paginate turtles

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Testudines(Turtles)_Search_Pagination]
					@PageIndex int
				   ,@PageSize int
				   ,@Query nvarchar(125)

AS
/*
	DECLARE  @PageIndex int = 0
			,@PageSize int = 20
			,@Query nvarchar(125) = 'Name'
	EXECUTE [dbo].[Testudines(Turtles)_Search_Pagination]
				 @PageIndex
				,@PageSize
				,@Query
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

			  ,TotalCount = COUNT(1) OVER()

		  FROM [dbo].[Testudines(Turtles)] as t
		  INNER JOIN [dbo].[Reptiles] as r
			ON t.[TypeId] = r.[Id]

		 WHERE ([Name] LIKE '%' + @Query + '%')
	  ORDER BY t.[Id] 

		OFFSET @offset Rows
	FETCH NEXT @PageSize Row ONLY

END
GO
