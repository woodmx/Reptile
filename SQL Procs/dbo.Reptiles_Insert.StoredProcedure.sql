USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Reptiles_Insert]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	inserts reptiles species

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Reptiles_Insert]
			@Species nvarchar(125),  
			@Id int OUTPUT
AS
/*
	 EXECUTE [dbo].[Reptiles_Insert]
			 (@Species nvarchar(125) = "Testudines"
	  VALUES
			 (@Species,
			  @Id OUTPUT)
*/
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [dbo].[Reptiles]
				([Species])
		 VALUES
				(@Species)

			SET @Id = SCOPE_IDENTITY()
END
GO
