USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Squamata(Snakes)_Update]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	updates snakes

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Squamata(Snakes)_Update]
				@Name nvarchar(125)
			   ,@Habitat nvarchar(125)
               ,@Diet nvarchar(125)
               ,@Lifespan int
               ,@TypeId int
			   ,@Id int OUTPUT


AS
/*
		DECLARE @Id int = 3

		DECLARE @Name nvarchar(125) = 'Dos'
			   ,@Habitat nvarchar(125) = 'Dos'
               ,@Diet nvarchar(125) = 'Dos'
               ,@Lifespan int = 2
               ,@TypeId int = 2

		EXECUTE [dbo].[Squamata(Snakes)_Update]
				@Name
			   ,@Habitat 
               ,@Diet 
               ,@Lifespan 
               ,@TypeId 
			   ,@Id OUTPUT
			  
*/
BEGIN

	UPDATE [dbo].[Squamata(Snakes)]
	   SET [Name] = @Name
		  ,[Habitat] = @Habitat
		  ,[Diet] = @Diet
		  ,[Lifespan] = @Lifespan
		  ,[TypeId] = @TypeId
	 WHERE Id = @Id

END

GO
