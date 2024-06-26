USE [OperationReptile]
GO
/****** Object:  Table [dbo].[Testudines(Turtles)]    Script Date: 4/18/2024 11:54:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testudines(Turtles)](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](125) NOT NULL,
	[Habitat] [nvarchar](125) NOT NULL,
	[Diet] [nvarchar](125) NOT NULL,
	[Lifespan] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
 CONSTRAINT [PK_Testudines(Turtles)] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Testudines(Turtles)]  WITH CHECK ADD  CONSTRAINT [FK_Testudines(Turtles)_Reptiles] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Reptiles] ([Id])
GO
ALTER TABLE [dbo].[Testudines(Turtles)] CHECK CONSTRAINT [FK_Testudines(Turtles)_Reptiles]
GO
