USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Testudines(Turtles)_Delete]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	deletes turtles by Id

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Testudines(Turtles)_Delete]
					@Id int
AS
/*
	SELECT *
	FROM [dbo].[Testudines(Turtles)]
   
	DECLARE @Id int = 5
	EXECUTE [dbo].[Testudines(Turtles)_Delete] 
				@Id
*/
BEGIN

	DELETE FROM [dbo].[Testudines(Turtles)]
		  WHERE Id = @Id 

END


GO
