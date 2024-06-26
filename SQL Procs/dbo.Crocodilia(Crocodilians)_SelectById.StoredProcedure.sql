USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Crocodilia(Crocodilians)_SelectById]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	selects crocodiles by Id

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Crocodilia(Crocodilians)_SelectById]
					@Id int

as
/*

	DECLARE @Id int = 7

	EXECUTE [dbo].[Crocodilia(Crocodilians)_SelectById]
			@Id

*/
BEGIN

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

		 WHERE c.[Id] = @Id

END


GO
