USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Testudines(Turtles)_Insert]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	inserts new turtles

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Testudines(Turtles)_Insert]
				 @Name nvarchar(125)
				,@Habitat nvarchar(125)
				,@Diet nvarchar(125)
				,@Lifespan int
				,@TypeId int
				,@Id int OUTPUT
AS
/*
	DECLARE @Id int
	 
	DECLARE	  @Name nvarchar(125)  = 'test'
			 ,@Habitat nvarchar(125)  = 'test'
			 ,@Diet nvarchar(125) = 'test'
			 ,@Lifespan int = 1
			 ,@TypeId int = 1
			
	EXECUTE [dbo].[Testudines(Turtles)_Insert]
			  @Name
			 ,@Habitat
			 ,@Diet
			 ,@Lifespan
			 ,@TypeId
			 ,@Id OUTPUT
*/
BEGIN

	INSERT INTO [dbo].[Testudines(Turtles)]
			   ([Name]
			   ,[Habitat]
			   ,[Diet]
			   ,[Lifespan]
			   ,[TypeId])
		 VALUES
			   (@Name
			   ,@Habitat
			   ,@Diet
			   ,@Lifespan
			   ,@TypeId)

			SET @Id = SCOPE_IDENTITY() 

END


GO
