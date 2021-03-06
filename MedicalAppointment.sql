USE [MedicalAppointment]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 4/24/2018 8:45:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[IdAppointment] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[IdDoctor] [int] NOT NULL,
	[IdPatient] [int] NULL,
	[IdStatus] [int] NOT NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[IdAppointment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 4/24/2018 8:45:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[IdDoctor] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[IdDoctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 4/24/2018 8:45:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[IdPatient] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[IdPatient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 4/24/2018 8:45:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[IdStatus] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Appointment] ON 

INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (1, CAST(N'2018-04-24T16:27:17.413' AS DateTime), 1, 2, 1)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (2, CAST(N'2018-04-24T16:27:26.503' AS DateTime), 2, 3, 1)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (3, CAST(N'2018-04-24T16:27:31.407' AS DateTime), 1, 2, 1)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (4, CAST(N'2018-04-24T18:25:43.510' AS DateTime), 1, 1, 2)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (5, CAST(N'2018-04-24T18:25:43.510' AS DateTime), 1, 1, 2)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (6, CAST(N'2018-04-24T18:25:43.510' AS DateTime), 1, 1, 2)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (7, CAST(N'2018-04-24T18:25:43.510' AS DateTime), 1, 1, 2)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (8, CAST(N'2018-04-24T18:25:43.510' AS DateTime), 1, 1, 2)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (9, CAST(N'2018-04-24T17:49:00.000' AS DateTime), 1, NULL, 2)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (10, CAST(N'2018-04-24T18:25:43.510' AS DateTime), 1, 1, 2)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (11, CAST(N'2018-04-24T18:25:43.510' AS DateTime), 1, 1, 2)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (13, CAST(N'2018-04-24T20:25:43.510' AS DateTime), 1, 1, 1)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (14, CAST(N'2018-04-24T18:25:43.510' AS DateTime), 1, 1, 2)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (15, CAST(N'2018-04-24T18:25:43.510' AS DateTime), 1, 1, 1)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (16, CAST(N'2018-04-24T18:25:43.510' AS DateTime), 1, 1, 2)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (17, CAST(N'2018-04-24T18:25:43.510' AS DateTime), 1, 1, 2)
INSERT [dbo].[Appointment] ([IdAppointment], [Date], [IdDoctor], [IdPatient], [IdStatus]) VALUES (18, CAST(N'2018-06-24T18:25:43.510' AS DateTime), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Appointment] OFF
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([IdDoctor], [Name]) VALUES (1, N'Peter')
INSERT [dbo].[Doctor] ([IdDoctor], [Name]) VALUES (2, N'Jhon')
INSERT [dbo].[Doctor] ([IdDoctor], [Name]) VALUES (3, N'Sean')
INSERT [dbo].[Doctor] ([IdDoctor], [Name]) VALUES (4, N'Katerine')
SET IDENTITY_INSERT [dbo].[Doctor] OFF
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([IdPatient], [Name]) VALUES (1, N'Richard')
INSERT [dbo].[Patient] ([IdPatient], [Name]) VALUES (2, N'Awo')
INSERT [dbo].[Patient] ([IdPatient], [Name]) VALUES (3, N'Noeil')
INSERT [dbo].[Patient] ([IdPatient], [Name]) VALUES (4, N'Persan')
SET IDENTITY_INSERT [dbo].[Patient] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([IdStatus], [Name]) VALUES (1, N'Assigned')
INSERT [dbo].[Status] ([IdStatus], [Name]) VALUES (2, N'Cancelled')
INSERT [dbo].[Status] ([IdStatus], [Name]) VALUES (3, N'Reassigned')
SET IDENTITY_INSERT [dbo].[Status] OFF
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Doctor] FOREIGN KEY([IdDoctor])
REFERENCES [dbo].[Doctor] ([IdDoctor])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Doctor]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Patient] FOREIGN KEY([IdPatient])
REFERENCES [dbo].[Patient] ([IdPatient])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Patient]
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD  CONSTRAINT [FK_Appointment_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[Appointment] CHECK CONSTRAINT [FK_Appointment_Status]
GO
