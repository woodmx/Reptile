USE [OperationReptile]
GO
/****** Object:  Table [dbo].[Squamata(Lizards)]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Squamata(Lizards)](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](125) NOT NULL,
	[Habitat] [nvarchar](125) NOT NULL,
	[Diet] [nvarchar](125) NOT NULL,
	[Lifespan] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
 CONSTRAINT [PK_Squamata (lizards)] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
