USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Squamata(Snakes)_SelectAll]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	selects all snakes

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Squamata(Snakes)_SelectAll]
		
as
/*
	EXECUTE [dbo].[Squamata(Snakes)_SelectAll]
*/

BEGIN

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

END
GO
