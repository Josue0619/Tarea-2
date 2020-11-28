USE [Arduino]
GO
/****** Object:  Table [dbo].[Coordenada]    Script Date: 05/11/2020 22:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coordenada](
	[IdCoordenada] [int] IDENTITY(1,1) NOT NULL,
	[CoordenadaX] [real] NULL,
	[CoordanadaY] [real] NULL,
 CONSTRAINT [PK_Coordenada] PRIMARY KEY CLUSTERED 
(
	[IdCoordenada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escenario]    Script Date: 05/11/2020 22:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escenario](
	[IdEscenario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdCoordenada] [int] NULL,
 CONSTRAINT [PK_Escenario] PRIMARY KEY CLUSTERED 
(
	[IdEscenario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orientacion]    Script Date: 05/11/2020 22:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orientacion](
	[IdOrientacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Orientacion] PRIMARY KEY CLUSTERED 
(
	[IdOrientacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Robot]    Script Date: 05/11/2020 22:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Robot](
	[IdRobot] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [bit] NULL,
	[IdCoordenada] [int] NULL,
	[IdOrientacion] [int] NULL,
	[IdEscenario] [int] NULL,
	[IdTarea] [int] NULL,
	[IdSensor] [int] NULL,
 CONSTRAINT [PK_Robot] PRIMARY KEY CLUSTERED 
(
	[IdRobot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sensor]    Script Date: 05/11/2020 22:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sensor](
	[IdSensor] [int] IDENTITY(1,1) NOT NULL,
	[Resolucion] [real] NULL,
	[DistanciaMinima] [real] NULL,
 CONSTRAINT [PK_Sensor] PRIMARY KEY CLUSTERED 
(
	[IdSensor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarea]     Script Date: 05/11/2020 22:20:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarea](
	[IdTarea] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Prioridad] [float] NULL,
 CONSTRAINT [PK_Tarea] PRIMARY KEY CLUSTERED 
(
	[IdTarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Coordenada] ON 

INSERT [dbo].[Coordenada] ([IdCoordenada], [CoordenadaX], [CoordanadaY]) VALUES (1, 1, 2)
INSERT [dbo].[Coordenada] ([IdCoordenada], [CoordenadaX], [CoordanadaY]) VALUES (2, 2, 3)
INSERT [dbo].[Coordenada] ([IdCoordenada], [CoordenadaX], [CoordanadaY]) VALUES (3, 4, 6)
INSERT [dbo].[Coordenada] ([IdCoordenada], [CoordenadaX], [CoordanadaY]) VALUES (4, 7, 8)
INSERT [dbo].[Coordenada] ([IdCoordenada], [CoordenadaX], [CoordanadaY]) VALUES (5, 9, 10)
SET IDENTITY_INSERT [dbo].[Coordenada] OFF
GO
SET IDENTITY_INSERT [dbo].[Escenario] ON 

INSERT [dbo].[Escenario] ([IdEscenario], [Nombre], [IdCoordenada]) VALUES (1, N'Camino Recto', 1)
INSERT [dbo].[Escenario] ([IdEscenario], [Nombre], [IdCoordenada]) VALUES (2, N'Pista De Baile', 2)
INSERT [dbo].[Escenario] ([IdEscenario], [Nombre], [IdCoordenada]) VALUES (3, N'Camino ZipZap', 3)
SET IDENTITY_INSERT [dbo].[Escenario] OFF
GO
SET IDENTITY_INSERT [dbo].[Orientacion] ON 

INSERT [dbo].[Orientacion] ([IdOrientacion], [Descripcion]) VALUES (1, N'Norte')
INSERT [dbo].[Orientacion] ([IdOrientacion], [Descripcion]) VALUES (2, N'Sur')
INSERT [dbo].[Orientacion] ([IdOrientacion], [Descripcion]) VALUES (3, N'Este')
INSERT [dbo].[Orientacion] ([IdOrientacion], [Descripcion]) VALUES (4, N'Oeste')
SET IDENTITY_INSERT [dbo].[Orientacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Robot] ON 

INSERT [dbo].[Robot] ([IdRobot], [Estado], [IdCoordenada], [IdOrientacion], [IdEscenario], [IdTarea], [IdSensor]) VALUES (1, 0, 1, 1, 1, 1, 1)
INSERT [dbo].[Robot] ([IdRobot], [Estado], [IdCoordenada], [IdOrientacion], [IdEscenario], [IdTarea], [IdSensor]) VALUES (2, 1, 2, 2, 1, 2, 2)
INSERT [dbo].[Robot] ([IdRobot], [Estado], [IdCoordenada], [IdOrientacion], [IdEscenario], [IdTarea], [IdSensor]) VALUES (4, 1, 1, 2, 3, 4, 2)
INSERT [dbo].[Robot] ([IdRobot], [Estado], [IdCoordenada], [IdOrientacion], [IdEscenario], [IdTarea], [IdSensor]) VALUES (5, 1, 3, 3, 2, 5, 3)
INSERT [dbo].[Robot] ([IdRobot], [Estado], [IdCoordenada], [IdOrientacion], [IdEscenario], [IdTarea], [IdSensor]) VALUES (7, 0, 1, 2, 3, 4, 1)
INSERT [dbo].[Robot] ([IdRobot], [Estado], [IdCoordenada], [IdOrientacion], [IdEscenario], [IdTarea], [IdSensor]) VALUES (8, 1, 2, 4, 2, 3, 3)
SET IDENTITY_INSERT [dbo].[Robot] OFF
GO
SET IDENTITY_INSERT [dbo].[Sensor] ON 

INSERT [dbo].[Sensor] ([IdSensor], [Resolucion], [DistanciaMinima]) VALUES (1, 12, 32)
INSERT [dbo].[Sensor] ([IdSensor], [Resolucion], [DistanciaMinima]) VALUES (2, 12, 40)
INSERT [dbo].[Sensor] ([IdSensor], [Resolucion], [DistanciaMinima]) VALUES (3, 16, 48)
SET IDENTITY_INSERT [dbo].[Sensor] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarea] ON 

INSERT [dbo].[Tarea] ([IdTarea], [Descripcion], [Prioridad]) VALUES (1, N'Caminar', 1)
INSERT [dbo].[Tarea] ([IdTarea], [Descripcion], [Prioridad]) VALUES (2, N'Bailar', 2)
INSERT [dbo].[Tarea] ([IdTarea], [Descripcion], [Prioridad]) VALUES (3, N'Gatear', 3)
INSERT [dbo].[Tarea] ([IdTarea], [Descripcion], [Prioridad]) VALUES (4, N'Acelerar', 4)
INSERT [dbo].[Tarea] ([IdTarea], [Descripcion], [Prioridad]) VALUES (5, N'Desacelerar', 5)
SET IDENTITY_INSERT [dbo].[Tarea] OFF
GO
ALTER TABLE [dbo].[Escenario]  WITH CHECK ADD  CONSTRAINT [FK_Escenario_Coordenada] FOREIGN KEY([IdCoordenada])
REFERENCES [dbo].[Coordenada] ([IdCoordenada])
GO
ALTER TABLE [dbo].[Escenario] CHECK CONSTRAINT [FK_Escenario_Coordenada]
GO
ALTER TABLE [dbo].[Robot]  WITH CHECK ADD  CONSTRAINT [FK_Robot_Coordenada] FOREIGN KEY([IdCoordenada])
REFERENCES [dbo].[Coordenada] ([IdCoordenada])
GO
ALTER TABLE [dbo].[Robot] CHECK CONSTRAINT [FK_Robot_Coordenada]
GO
ALTER TABLE [dbo].[Robot]  WITH CHECK ADD  CONSTRAINT [FK_Robot_Escenario] FOREIGN KEY([IdEscenario])
REFERENCES [dbo].[Escenario] ([IdEscenario])
GO
ALTER TABLE [dbo].[Robot] CHECK CONSTRAINT [FK_Robot_Escenario]
GO
ALTER TABLE [dbo].[Robot]  WITH CHECK ADD  CONSTRAINT [FK_Robot_Orientacion] FOREIGN KEY([IdOrientacion])
REFERENCES [dbo].[Orientacion] ([IdOrientacion])
GO
ALTER TABLE [dbo].[Robot] CHECK CONSTRAINT [FK_Robot_Orientacion]
GO
ALTER TABLE [dbo].[Robot]  WITH CHECK ADD  CONSTRAINT [FK_Robot_Sensor] FOREIGN KEY([IdSensor])
REFERENCES [dbo].[Sensor] ([IdSensor])
GO
ALTER TABLE [dbo].[Robot] CHECK CONSTRAINT [FK_Robot_Sensor]
GO
ALTER TABLE [dbo].[Robot]  WITH CHECK ADD  CONSTRAINT [FK_Robot_Tarea] FOREIGN KEY([IdTarea])
REFERENCES [dbo].[Tarea] ([IdTarea])
GO
ALTER TABLE [dbo].[Robot] CHECK CONSTRAINT [FK_Robot_Tarea]
GO
