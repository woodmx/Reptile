USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Crocodilia(Crocodilians)_Delete]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	deletes crocodiles by Id

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Crocodilia(Crocodilians)_Delete]
				@Id int

as
/*
   DECLARE @Id int = 7

   EXECUTE [dbo].[Crocodilia(Crocodilians)_Delete] 
				@Id 

	SELECT *
	  FROM [dbo].[Crocodilia(Crocodilians)]
*/
BEGIN
	
    DELETE FROM [dbo].[Crocodilia(Crocodilians)]
		  WHERE Id = @Id
				
END

GO
