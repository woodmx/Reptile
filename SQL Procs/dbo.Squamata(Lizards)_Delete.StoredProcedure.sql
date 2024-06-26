USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Squamata(Lizards)_Delete]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	deletes lizards by Id

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Squamata(Lizards)_Delete]
				@Id int

as
/*
   DECLARE @Id int = 7

   EXECUTE [dbo].[Squamata(Lizards)_Delete]
				@Id 

	SELECT *
	  FROM [dbo].[Squamata(Lizards)]
*/
BEGIN
	
    DELETE FROM [dbo].[Squamata(Lizards)]
		  WHERE Id = @Id
				
END

GO
