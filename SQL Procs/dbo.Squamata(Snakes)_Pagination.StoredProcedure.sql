USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Squamata(Snakes)_Pagination]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	paginate snakes

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Squamata(Snakes)_Pagination]
				@PageIndex int
			   ,@PageSize int

AS
/*
	DECLARE  @PageIndex int = 0
			,@PageSize int = 10

	EXECUTE [dbo].[Squamata(Snakes)_Pagination]
			 @PageIndex
			,@PageSize
*/

BEGIN

	   DECLARE @offset int = @PageIndex * @PageSize

		SELECT s.[Id] as SnakeId
			  ,s.[Name]
			  ,s.[Habitat]
			  ,s.[Diet]
			  ,s.[Lifespan]
			  ,s.[TypeId]
			  ,r.[Species]

		  FROM [dbo].[Squamata(Snakes)] as s 
			INNER JOIN [dbo].[Reptiles] as r
			ON s.[TypeId] = r.[Id]

	  ORDER BY s.[Id]

		OFFSET @offset Rows
	FETCH NEXT @PageSize Rows ONLY

END

GO
