USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Testudines(Turtles)_SelectById]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	selects turtles by Id

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Testudines(Turtles)_SelectById]
					@Id int

AS
/*
	DECLARE @Id int = 3
	EXECUTE [dbo].[Testudines(Turtles)_SelectById]
				@Id
*/
BEGIN

	SELECT [Id]
		  ,[Name]
		  ,[Habitat]
		  ,[Diet]
		  ,[Lifespan]
		  ,[TypeId]

	  FROM [dbo].[Testudines(Turtles)]
	 WHERE Id = @Id

END
GO
