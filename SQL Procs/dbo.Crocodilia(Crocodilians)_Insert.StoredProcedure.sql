USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Crocodilia(Crocodilians)_Insert]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	inserts new crocodiles

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Crocodilia(Crocodilians)_Insert]
				@Name nvarchar(125)
			   ,@Habitat nvarchar(125)
               ,@Diet nvarchar(125)
               ,@Lifespan int
               ,@TypeId int
			   ,@Id int OUTPUT


AS
/*
		DECLARE @Id int = 0

		DECLARE @Name nvarchar(125) = 'test'
			   ,@Habitat nvarchar(125) = 'test'
               ,@Diet nvarchar(125) = 'test'
               ,@Lifespan int = 2
               ,@TypeId int = 2
			   
		EXECUTE [dbo].[Crocodilia(Crocodilians)_Insert]
				@Name
			   ,@Habitat 
               ,@Diet 
               ,@Lifespan 
               ,@TypeId 
			   ,@Id OUTPUT
*/
BEGIN


	INSERT INTO [dbo].[Crocodilia(Crocodilians)]
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
