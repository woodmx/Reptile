USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Squamata(Snakes)_SelectById]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	selects snakes by Id

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Squamata(Snakes)_SelectById]
				@Id int

AS
/*
	DECLARE @Id int = 7

	EXECUTE [dbo].[Squamata(Snakes)_SelectById]
			@Id
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

		 WHERE s.[Id] = @Id

END
GO
