USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Testudines(Turtles)_Update]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	updates turtles

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Testudines(Turtles)_Update]
					 @Name nvarchar(125)
					,@Habitat nvarchar(125)
					,@Diet nvarchar(125)
					,@Lifespan int
					,@TypeId int
					,@Id int OUTPUT
AS
/*
		DECLARE @Id int = 4

		DECLARE  @Name nvarchar(125) = 'Uno'
				,@Habitat nvarchar(125) = 'Uno'
				,@Diet nvarchar(125) = 'Uno'
				,@Lifespan int = 2
				,@TypeId int = 1

		EXECUTE [dbo].[Testudines(Turtles)_Insert]
				 @Name
				,@Habitat
				,@Diet
				,@Lifespan
				,@TypeId
				,@Id OUTPUT 

		SELECT *
		  FROM [dbo].[Testudines(Turtles)]
*/
BEGIN

	UPDATE [dbo].[Testudines(Turtles)]
	   SET [Name] = @Name
		  ,[Habitat] = @Habitat
		  ,[Diet] = @Diet
		  ,[Lifespan] = @Lifespan
		  ,[TypeId] = @TypeId

	 WHERE Id = @Id

END


GO
