USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Squamata(Lizards)_SelectById]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	selects lizards by Id

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Squamata(Lizards)_SelectById]
				@Id int

AS
/*
	DECLARE @Id int = 7

	EXECUTE [dbo].[Squamata(Lizards)_SelectById]
			@Id
*/
BEGIN

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

		 WHERE l.[Id] = @Id

END
GO
