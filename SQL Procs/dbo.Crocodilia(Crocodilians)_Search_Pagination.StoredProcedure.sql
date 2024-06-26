USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Crocodilia(Crocodilians)_Search_Pagination]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	search and paginate crocodiles

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Crocodilia(Crocodilians)_Search_Pagination]
				@PageIndex int
			   ,@PageSize int
			   ,@Query nvarchar(125)

AS
/*
	DECLARE  @PageIndex int = 0
			,@PageSize int = 1
			,@Query nvarchar(125) = 'Name'

	EXECUTE [dbo].[Crocodilia(Crocodilians)_Search_Pagination]
			 @PageIndex
			,@PageSize
			,@Query
*/
BEGIN

	   DECLARE @offset int = @PageIndex * @PageSize

		SELECT c.[Id] as CrocId
			  ,c.[Name]
			  ,c.[Habitat]
			  ,c.[Diet]
			  ,c.[Lifespan]
			  ,c.[TypeId]
			  ,r.[Species]

		  FROM [dbo].[Crocodilia(Crocodilians)] as c 
			INNER JOIN [dbo].[Reptiles] as r
			ON c.[TypeId] = r.[Id]

		 WHERE ([Name] LIKE '%' + @Query + '%')
	  ORDER BY c.[Id]

		OFFSET @offset Rows
	FETCH NEXT @PageSize Rows ONLY

END


GO
