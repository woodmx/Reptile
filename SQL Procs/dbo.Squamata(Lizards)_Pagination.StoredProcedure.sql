USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Squamata(Lizards)_Pagination]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	paginate lizards

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Squamata(Lizards)_Pagination]
				@PageIndex int
			   ,@PageSize int

AS
/*
	DECLARE  @PageIndex int = 0
			,@PageSize int = 10

	EXECUTE [dbo].[Squamata(Lizards)_Pagination]
			 @PageIndex
			,@PageSize
*/

BEGIN

	   DECLARE @offset int = @PageIndex * @PageSize

		SELECT l.[Id] as LizardId
			  ,l.[Name]
			  ,l.[Habitat]
			  ,l.[Diet]
			  ,l.[Lifespan]
			  ,l.[TypeId]
			  ,r.[Species]

		  FROM [dbo].[Squamata(Lizards)] as l 
			INNER JOIN [dbo].[Reptiles] as r
			ON l.[TypeId] = r.[Id]

	  ORDER BY l.[Id]

		OFFSET @offset Rows
	FETCH NEXT @PageSize Rows ONLY

END


GO
