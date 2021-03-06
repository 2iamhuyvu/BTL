USE [WebsiteNhaHang]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 03/12/2018 11:53:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[food_id] [int] IDENTITY(1,1) NOT NULL,
	[food_name] [nvarchar](200) NULL,
	[food_price] [float] NULL,
	[food_sale] [int] NULL,
	[food_avatar] [nvarchar](200) NULL,
	[food_description] [ntext] NULL,
	[foodtype_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[food_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FoodType]    Script Date: 03/12/2018 11:53:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodType](
	[foodtype_id] [int] IDENTITY(1,1) NOT NULL,
	[foodtype_name] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[foodtype_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 03/12/2018 11:53:32 CH ******/
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
	[member_username] [varchar](20) NULL,
	[member_password] [varchar](100) NULL,
	[member_status] [int] NULL,
	[member_type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/12/2018 11:53:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderdetail_id] [int] IDENTITY(1,1) NOT NULL,
	[foodid] [int] NULL,
	[quantity] [int] NULL,
	[ordertableid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderdetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderTable]    Script Date: 03/12/2018 11:53:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderTable](
	[ordertable_id] [int] IDENTITY(1,1) NOT NULL,
	[ordertable_iduser] [int] NULL,
	[ordertable_dateset] [date] NULL,
	[ordertable_timeset] [time](7) NULL,
	[ordertable_timereturn] [time](7) NULL,
	[ordertable_idtable] [int] NULL,
	[ordertable_status] [bit] NULL,
	[tenKH] [nvarchar](200) NULL,
	[emailKH] [varchar](100) NULL,
	[dienthoaiKH] [varchar](20) NULL,
	[loaiKH] [bit] NULL,
	[loaiHD] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ordertable_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qlTable]    Script Date: 03/12/2018 11:53:32 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qlTable](
	[table_id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](10) NULL,
	[table_description] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[table_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([food_id], [food_name], [food_price], [food_sale], [food_avatar], [food_description], [foodtype_id]) VALUES (1, N'Món1 21312', 20000, 5, N'offer_1.jpg', N'Món 1', 2)
INSERT [dbo].[Food] ([food_id], [food_name], [food_price], [food_sale], [food_avatar], [food_description], [foodtype_id]) VALUES (2, N'Món2', 50000, 10, N'offer_1.jpg', N'Món 2', 2)
INSERT [dbo].[Food] ([food_id], [food_name], [food_price], [food_sale], [food_avatar], [food_description], [foodtype_id]) VALUES (3, N'das', 1233, 5, N'a1.jpg', N'asdas', 2)
INSERT [dbo].[Food] ([food_id], [food_name], [food_price], [food_sale], [food_avatar], [food_description], [foodtype_id]) VALUES (4, N'sdf', 234, 20, N'a2.jpg', N'fasfasf', 2)
INSERT [dbo].[Food] ([food_id], [food_name], [food_price], [food_sale], [food_avatar], [food_description], [foodtype_id]) VALUES (5, N'Món 5', 123, 10, N'a2.jpg', N'fsdf', 2)
INSERT [dbo].[Food] ([food_id], [food_name], [food_price], [food_sale], [food_avatar], [food_description], [foodtype_id]) VALUES (6, N'adasd', 123, 15, N'a4.jpg', N'asdasf', 3)
INSERT [dbo].[Food] ([food_id], [food_name], [food_price], [food_sale], [food_avatar], [food_description], [foodtype_id]) VALUES (7, N'mon 555', 123, 12, N'a5.jpg', N'dhjasdas', 2)
SET IDENTITY_INSERT [dbo].[Food] OFF
SET IDENTITY_INSERT [dbo].[FoodType] ON 

INSERT [dbo].[FoodType] ([foodtype_id], [foodtype_name]) VALUES (1, N'Hai san')
INSERT [dbo].[FoodType] ([foodtype_id], [foodtype_name]) VALUES (2, N'Dac san')
INSERT [dbo].[FoodType] ([foodtype_id], [foodtype_name]) VALUES (3, N'Trang  mieng')
SET IDENTITY_INSERT [dbo].[FoodType] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([member_id], [member_fullname], [member_phone], [member_mail], [member_username], [member_password], [member_status], [member_type]) VALUES (1, N' vũ huy', N'12345', N'huy@gmail.com', N'huyvu', N'202cb962ac59075b964b07152d234b70', 1, 1)
INSERT [dbo].[Member] ([member_id], [member_fullname], [member_phone], [member_mail], [member_username], [member_password], [member_status], [member_type]) VALUES (2, N' vũ huy 1', N'12345', N'dat@gmail.com', N'dat123', N'202cb962ac59075b964b07152d234b70', 1, 0)
INSERT [dbo].[Member] ([member_id], [member_fullname], [member_phone], [member_mail], [member_username], [member_password], [member_status], [member_type]) VALUES (4, N'trong', N'113', N'trong@gmail.com', N'trong', N'e10adc3949ba59abbe56e057f20f883e', 1, 0)
INSERT [dbo].[Member] ([member_id], [member_fullname], [member_phone], [member_mail], [member_username], [member_password], [member_status], [member_type]) VALUES (5, N'admin', N'123', N'trong@gmail.com', N'admin', N'e10adc3949ba59abbe56e057f20f883e', 1, 1)
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([orderdetail_id], [foodid], [quantity], [ordertableid]) VALUES (5, 2, 1, 16)
INSERT [dbo].[OrderDetail] ([orderdetail_id], [foodid], [quantity], [ordertableid]) VALUES (6, 3, 1, 16)
INSERT [dbo].[OrderDetail] ([orderdetail_id], [foodid], [quantity], [ordertableid]) VALUES (7, 2, 3, 17)
INSERT [dbo].[OrderDetail] ([orderdetail_id], [foodid], [quantity], [ordertableid]) VALUES (8, 3, 3, 17)
INSERT [dbo].[OrderDetail] ([orderdetail_id], [foodid], [quantity], [ordertableid]) VALUES (9, 1, 3, 17)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[OrderTable] ON 

INSERT [dbo].[OrderTable] ([ordertable_id], [ordertable_iduser], [ordertable_dateset], [ordertable_timeset], [ordertable_timereturn], [ordertable_idtable], [ordertable_status], [tenKH], [emailKH], [dienthoaiKH], [loaiKH], [loaiHD]) VALUES (1, 1, CAST(N'2018-12-10' AS Date), CAST(N'05:30:00' AS Time), CAST(N'06:30:00' AS Time), 1, 1, N'trong', N'trong@gmail.com', N'113', 0, 1)
SET IDENTITY_INSERT [dbo].[OrderTable] OFF
SET IDENTITY_INSERT [dbo].[qlTable] ON 

INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (1, N'Bàn 1', 4)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (2, N'Bàn 2', 4)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (3, N'Bàn 3', 4)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (4, N'Bàn 4', 4)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (5, N'Bàn 5', 4)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (6, N'Bàn 6', 6)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (7, N'Bàn 7', 6)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (8, N'Bàn 8', 6)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (9, N'Bàn 9', 6)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (10, N'Bàn 10', 6)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (11, N'Bàn 11', 8)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (12, N'Bàn 12', 8)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (13, N'Bàn 13', 8)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (14, N'Bàn 14', 8)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (15, N'Bàn 15', 8)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (16, N'Bàn 16', 8)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (17, N'Bàn 17', 8)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (18, N'Bàn 18', 8)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (19, N'Bàn 19', 8)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (21, N'ban20', 8)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_description]) VALUES (22, N'ban21', 8)
SET IDENTITY_INSERT [dbo].[qlTable] OFF
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderFood_Food] FOREIGN KEY([foodid])
REFERENCES [dbo].[Food] ([food_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderFood_Food]
GO
