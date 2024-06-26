USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Squamata(Snakes)_Delete]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	deletes snakes by Id

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Squamata(Snakes)_Delete]
				@Id int

as
/*
   DECLARE @Id int = 7

   EXECUTE [dbo].[Squamata(Snakes)_Delete]
				@Id 

	SELECT *
	  FROM [dbo].[Squamata(Snakes)]
*/
BEGIN
	
    DELETE FROM [dbo].[Squamata(Snakes)]
		  WHERE Id = @Id
				
END
GO
