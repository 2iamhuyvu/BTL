USE [WebsiteNhaHang]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 04/12/2018 9:44:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[idContact] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[email] [varchar](100) NULL,
	[message] [ntext] NULL,
	[thoigiangui] [datetime] NULL,
	[tinhtrangTraloi] [bit] NULL,
	[thoigianTraloi] [datetime] NULL,
	[noidungTraloi] [ntext] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[idContact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 04/12/2018 9:44:52 PM ******/
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
/****** Object:  Table [dbo].[FoodType]    Script Date: 04/12/2018 9:44:52 PM ******/
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
/****** Object:  Table [dbo].[Member]    Script Date: 04/12/2018 9:44:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[member_id] [int] IDENTITY(1,1) NOT NULL,
	[member_fullname] [nvarchar](200) NULL,
	[member_phone] [varchar](16) NULL,
	[member_mail] [varchar](100) NULL,
	[member_username] [varchar](20) NULL,
	[member_password] [varchar](500) NULL,
	[member_status] [int] NULL,
	[member_type] [int] NULL,
	[member_avatar] [varchar](500) NULL,
 CONSTRAINT [PK__Member__B29B853420CAFD27] PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 04/12/2018 9:44:52 PM ******/
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
/****** Object:  Table [dbo].[OrderTable]    Script Date: 04/12/2018 9:44:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderTable](
	[ordertable_id] [int] IDENTITY(1,1) NOT NULL,
	[ordertable_iduser] [int] NULL,
	[ordertable_dateset] [datetime] NULL,
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
/****** Object:  Table [dbo].[qlTable]    Script Date: 04/12/2018 9:44:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qlTable](
	[table_id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](10) NULL,
	[table_status] [bit] NULL,
	[table_description] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[table_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([idContact], [name], [email], [message], [thoigiangui], [tinhtrangTraloi], [thoigianTraloi], [noidungTraloi]) VALUES (2, N'huy2', N'vudinhhuyit@gmail.com', N'noidung lien he 2', CAST(N'2018-12-04T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Contact] ([idContact], [name], [email], [message], [thoigiangui], [tinhtrangTraloi], [thoigianTraloi], [noidungTraloi]) VALUES (3, N'huy1', N'vudinhhuyit@gmail.com', N'noi dung lien he', CAST(N'2018-12-04T00:00:00.000' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Contact] ([idContact], [name], [email], [message], [thoigiangui], [tinhtrangTraloi], [thoigianTraloi], [noidungTraloi]) VALUES (4, N'huy3', N'vudinhhuyit@gmail.com', N'noi dung lien he 3', CAST(N'2018-12-04T00:00:00.000' AS DateTime), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Contact] OFF
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

INSERT [dbo].[Member] ([member_id], [member_fullname], [member_phone], [member_mail], [member_username], [member_password], [member_status], [member_type], [member_avatar]) VALUES (1, N' vũ huy', N'12345', N'huy@gmail.com', N'huyvu', N'202cb962ac59075b964b07152d234b70', 1, 1, N'a1.ipg')
INSERT [dbo].[Member] ([member_id], [member_fullname], [member_phone], [member_mail], [member_username], [member_password], [member_status], [member_type], [member_avatar]) VALUES (2, N' vũ huy 1', N'12345', N'dat@gmail.com', N'dat123', N'202cb962ac59075b964b07152d234b70', 1, 0, N'a2.ipg')
INSERT [dbo].[Member] ([member_id], [member_fullname], [member_phone], [member_mail], [member_username], [member_password], [member_status], [member_type], [member_avatar]) VALUES (3, N'Duwong Tien Dat', N'1932234987', N'dad@gmail.com', N'datduong', N'2e678024cabebdfe17a5aeef0163fe6d', 1, 0, N'a3.ipg')
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([orderdetail_id], [foodid], [quantity], [ordertableid]) VALUES (1, 2, 1, 1)
INSERT [dbo].[OrderDetail] ([orderdetail_id], [foodid], [quantity], [ordertableid]) VALUES (2, 2, 1, 2)
INSERT [dbo].[OrderDetail] ([orderdetail_id], [foodid], [quantity], [ordertableid]) VALUES (3, 1, 1, 2)
INSERT [dbo].[OrderDetail] ([orderdetail_id], [foodid], [quantity], [ordertableid]) VALUES (4, 2, 1, 2)
INSERT [dbo].[OrderDetail] ([orderdetail_id], [foodid], [quantity], [ordertableid]) VALUES (5, 3, 1, 2)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[OrderTable] ON 

INSERT [dbo].[OrderTable] ([ordertable_id], [ordertable_iduser], [ordertable_dateset], [ordertable_timeset], [ordertable_timereturn], [ordertable_idtable], [ordertable_status], [tenKH], [emailKH], [dienthoaiKH], [loaiKH], [loaiHD]) VALUES (1, -1, CAST(N'1900-01-01T05:30:00.000' AS DateTime), CAST(N'05:30:00' AS Time), NULL, -1, 1, N'huy', N'huy@gmail.com', N'0987654321', 0, 0)
INSERT [dbo].[OrderTable] ([ordertable_id], [ordertable_iduser], [ordertable_dateset], [ordertable_timeset], [ordertable_timereturn], [ordertable_idtable], [ordertable_status], [tenKH], [emailKH], [dienthoaiKH], [loaiKH], [loaiHD]) VALUES (2, -1, CAST(N'2018-12-04T01:46:37.133' AS DateTime), CAST(N'05:30:00' AS Time), NULL, 5, 1, N'das', N'huy@gmail.com', N'0987654321', 0, 1)
INSERT [dbo].[OrderTable] ([ordertable_id], [ordertable_iduser], [ordertable_dateset], [ordertable_timeset], [ordertable_timereturn], [ordertable_idtable], [ordertable_status], [tenKH], [emailKH], [dienthoaiKH], [loaiKH], [loaiHD]) VALUES (3, -1, CAST(N'2018-12-04T01:53:43.613' AS DateTime), CAST(N'05:30:00' AS Time), NULL, 5, 0, N'dsad', N'huy2@gmail.com', N'0987654321', 0, 1)
SET IDENTITY_INSERT [dbo].[OrderTable] OFF
SET IDENTITY_INSERT [dbo].[qlTable] ON 
select * from qlTable

INSERT [dbo].[qlTable] ([table_id], [table_name], [table_status], [table_description]) VALUES ( N'', 0, 1)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_status], [table_description]) VALUES ( N'2', 0, 2)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_status], [table_description]) VALUES ( N'3', 0, 1)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_status], [table_description]) VALUES ( N'4', 0, 1)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_status], [table_description]) VALUES ( N'5', 0, 1)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_status], [table_description]) VALUES ( N'6', 0, 2)
INSERT [dbo].[qlTable] ([table_id], [table_name], [table_status], [table_description]) VALUES ( N'7', 0, 3)
SET IDENTITY_INSERT [dbo].[qlTable] OFF
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderFood_Food] FOREIGN KEY([foodid])
REFERENCES [dbo].[Food] ([food_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderFood_Food]
GO
