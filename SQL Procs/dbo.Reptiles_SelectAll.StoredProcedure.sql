USE [OperationReptile]
GO
/****** Object:  StoredProcedure [dbo].[Reptiles_SelectAll]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcus Underwood
-- Create date: 04/13/24
-- Description:	selects all reptiles

-- Modified by: 
-- Alter date:
-- Description: 
-- =============================================
CREATE PROC [dbo].[Reptiles_SelectAll]

as
/*
Execute [dbo].[Reptiles_SelectAll]
*/
BEGIN


	SELECT [Id]
		  ,[Species]
          
     FROM [dbo].[Reptiles]

END
GO
