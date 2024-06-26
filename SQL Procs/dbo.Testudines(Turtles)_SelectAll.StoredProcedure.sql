USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Testudines(Turtles)_SelectAll]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	selects all turtles

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Testudines(Turtles)_SelectAll]

AS
/*
	EXECUTE [dbo].[Testudines(Turtles)_SelectAll]
*/
BEGIN

	SELECT [Id]
		  ,[Name]
		  ,[Habitat]
		  ,[Diet]
		  ,[Lifespan]
		  ,[TypeId]

	  FROM [dbo].[Testudines(Turtles)]

END


GO
