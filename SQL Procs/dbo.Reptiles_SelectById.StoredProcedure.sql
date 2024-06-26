USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Reptiles_SelectById]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	selects reptiles by Id

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Reptiles_SelectById]
				@Id int

as
/*

DECLARE @Id int
Execute [dbo].[Reptiles_SelectById]
		@Id
*/
BEGIN

	SELECT [Id]
		  ,[Species]
          
     FROM [dbo].[Reptiles]
	 WHERE Id = @Id

END
GO
