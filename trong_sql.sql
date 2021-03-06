USE [WebsiteNhaHang]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 03/12/2018 8:36:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[food_id] [int] IDENTITY(1,1) NOT NULL,
	[food_name] [nvarchar](200) NULL,
	[food_price] [float] NULL,
	[food_type] [int] NULL,
	[food_sale] [int] NULL,
	[food_avatar] [nvarchar](200) NULL,
	[food_description] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[food_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 03/12/2018 8:36:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member](
	[member_id] [int] IDENTITY(1,1) NOT NULL,
	[member_fullname] [nvarchar](200) NULL,
	[member_phone] [varchar](16) NULL,
	[member_mail] [varchar](100) NULL,
	[member_username] [nvarchar](50) NULL,
	[member_password] [varchar](200) NULL,
	[member_status] [int] NULL,
	[member_type] [int] NULL,
 CONSTRAINT [PK__Member__B29B85343049F2CC] PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderFood]    Script Date: 03/12/2018 8:36:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderFood](
	[orderfood_id] [int] IDENTITY(1,1) NOT NULL,
	[orderfood_foodid] [int] NULL,
	[orderfood_timeorder] [datetime] NULL,
	[orderfood_quantity] [int] NULL,
	[orderfood_totalmoney] [float] NULL,
	[orderfood_iduser] [int] NULL,
	[orderfood_ordertable] [bit] NULL,
	[orderfood_status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderfood_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderTable]    Script Date: 03/12/2018 8:36:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTable](
	[ordertable_id] [int] IDENTITY(1,1) NOT NULL,
	[ordertable_iduser] [int] NULL,
	[ordertable_dateset] [date] NULL,
	[ordertable_timeset] [time](7) NULL,
	[ordertable_timereturn] [time](7) NULL,
	[ordertable_idtable] [int] NULL,
	[ordertable_status] [bit] NULL,
 CONSTRAINT [PK__OrderTab__BE4123459BF4624C] PRIMARY KEY CLUSTERED 
(
	[ordertable_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[qlTable]    Script Date: 03/12/2018 8:36:02 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qlTable](
	[table_id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [nvarchar](10) NULL,
	[table_status] [bit] NULL,
	[table_description] [int] NULL,
 CONSTRAINT [PK__qlTable__B21E8F241E9C2DC1] PRIMARY KEY CLUSTERED 
(
	[table_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([member_id], [member_fullname], [member_phone], [member_mail], [member_username], [member_password], [member_status], [member_type]) VALUES (1, N'trong', N'113', N'phamtrong131997@gmail.com', N'trong', N'e10adc3949ba59abbe56e057f20f883e', 1, 1)
INSERT [dbo].[Member] ([member_id], [member_fullname], [member_phone], [member_mail], [member_username], [member_password], [member_status], [member_type]) VALUES (2, N'trongdz', N'114', N'phamtrong131997@gmail.com', N'admin', N'e10adc3949ba59abbe56e057f20f883e', 1, 1)
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[OrderTable] ON 

INSERT [dbo].[OrderTable] ([ordertable_id], [ordertable_iduser], [ordertable_dateset], [ordertable_timeset], [ordertable_timereturn], [ordertable_idtable], [ordertable_status]) VALUES (1, 1, CAST(N'1997-03-01' AS Date), CAST(N'05:30:00' AS Time), CAST(N'06:00:00' AS Time), 1, 1)
SET IDENTITY_INSERT [dbo].[OrderTable] OFF
SET IDENTITY_INSERT [dbo].[qlTable] ON 

INSERT [dbo].[qlTable] ([table_id], [table_name], [table_status], [table_description]) VALUES (1, N'ban1', 1, 4)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_status], [table_description]) VALUES (2, N'ban2', 0, 4)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_status], [table_description]) VALUES (3, N'ban3', 0, 4)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_status], [table_description]) VALUES (4, N'ban4', 0, 6)
SET IDENTITY_INSERT [dbo].[qlTable] OFF
ALTER TABLE [dbo].[OrderFood]  WITH CHECK ADD  CONSTRAINT [FK_OrderFood_Food] FOREIGN KEY([orderfood_foodid])
REFERENCES [dbo].[Food] ([food_id])
GO
ALTER TABLE [dbo].[OrderFood] CHECK CONSTRAINT [FK_OrderFood_Food]
GO
ALTER TABLE [dbo].[OrderFood]  WITH CHECK ADD  CONSTRAINT [FK_OrderFood_Member] FOREIGN KEY([orderfood_iduser])
REFERENCES [dbo].[Member] ([member_id])
GO
ALTER TABLE [dbo].[OrderFood] CHECK CONSTRAINT [FK_OrderFood_Member]
GO
ALTER TABLE [dbo].[OrderTable]  WITH CHECK ADD  CONSTRAINT [FK_OrderTable_Member] FOREIGN KEY([ordertable_iduser])
REFERENCES [dbo].[Member] ([member_id])
GO
ALTER TABLE [dbo].[OrderTable] CHECK CONSTRAINT [FK_OrderTable_Member]
GO
ALTER TABLE [dbo].[OrderTable]  WITH CHECK ADD  CONSTRAINT [FK_OrderTable_table] FOREIGN KEY([ordertable_idtable])
REFERENCES [dbo].[qlTable] ([table_id])
GO
ALTER TABLE [dbo].[OrderTable] CHECK CONSTRAINT [FK_OrderTable_table]
GO
