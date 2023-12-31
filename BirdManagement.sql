CREATE DATABASE [BirdManagement]
GO

USE [BirdManagement]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/16/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Role] [int] NULL,
	[Actice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountDetail]    Script Date: 11/16/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountDetail](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 11/16/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[DateCheckOut] [date] NULL,
	[Total] [float] NULL,
	[Status] [int] NULL,
	[checked] [int] NULL,
	[StaffID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDescription]    Script Date: 11/16/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDescription](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BillID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[ImportPrice] [float] NULL,
	[Price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/16/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[ImportPrice] [float] NULL,
	[Quantity] [int] NULL,
	[TypeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 11/16/2023 4:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [Username], [Password], [Role], [Actice]) VALUES (1, N'sa', N'123', 1, 1)
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role], [Actice]) VALUES (2, N'user1', N'123', 2, 1)
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role], [Actice]) VALUES (3, N'user2', N'123', 2, 1)
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role], [Actice]) VALUES (4, N'staff1', N'123', 3, 1)
INSERT [dbo].[Account] ([ID], [Username], [Password], [Role], [Actice]) VALUES (5, N'staff2', N'123', 3, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[AccountDetail] ([ID], [Name], [Address], [Phone], [Email]) VALUES (1, N'Vy Khang', N'Tra Vinh', N'1234567890', N'admin@gmail.com')
INSERT [dbo].[AccountDetail] ([ID], [Name], [Address], [Phone], [Email]) VALUES (2, N'Van A', N'Nguyen Trai, Tra Vinh', N'0559980063', N'user1@gmail.com')
INSERT [dbo].[AccountDetail] ([ID], [Name], [Address], [Phone], [Email]) VALUES (3, N'Thuy Chung', N'Hai Phong', N'0332255332', N'user2@gmail.com')
INSERT [dbo].[AccountDetail] ([ID], [Name], [Address], [Phone], [Email]) VALUES (4, N'Thi A', N'Ho Chi Minh City', N'0123330012', N'staff1@gmail.com')
INSERT [dbo].[AccountDetail] ([ID], [Name], [Address], [Phone], [Email]) VALUES (5, N'Van B', N'Can Tho', N'0987654321', N'staff2@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (1, 2, CAST(N'2019-10-07' AS Date), 880000, 1, NULL, 4)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (2, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (3, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (4, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (5, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (6, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (7, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (8, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (9, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (10, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (11, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (12, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (13, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (14, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (15, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
INSERT [dbo].[Bill] ([ID], [CustomerID], [DateCheckOut], [Total], [Status], [checked], [StaffID]) VALUES (16, 3, CAST(N'2019-11-09' AS Date), 1460000, 1, NULL, 5)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[BillDescription] ON 

INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (1, 1, 1, 3, 120000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (2, 1, 3, 7, 21000, 40000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (3, 2, 2, 3, 60000, 120000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (4, 2, 5, 3, 140000, 200000)
INSERT [dbo].[BillDescription] ([ID], [BillID], [ProductID], [Quantity], [ImportPrice], [Price]) VALUES (5, 2, 6, 20, 18000, 25000)
SET IDENTITY_INSERT [dbo].[BillDescription] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (1, N'Vet Bay Mau', 200000, 120000, 67, 1)
INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (2, N'Chim Cuc cu', 120000, 60000, 79, 1)
INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (3, N'Tu Hu', 40000, 21000, 85, 2)
INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (4, N'Chim Cut', 60000, 33000, 72, 3)
INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (5, N'Long go chim cao cap', 200000, 140000, 68, 4)
INSERT [dbo].[Product] ([ID], [Name], [Price], [ImportPrice], [Quantity], [TypeID]) VALUES (6, N'Thuc an cao cap', 25000, 18000, 87, 5)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeProduct] ON 

INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (1, N'Chim Canh')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (2, N'Chim Binh Thuong')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (3, N'Chim Đe Thit')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (4, N'Long Chim')
INSERT [dbo].[TypeProduct] ([ID], [Name]) VALUES (5, N'Thuc An')
SET IDENTITY_INSERT [dbo].[TypeProduct] OFF
GO
ALTER TABLE [dbo].[AccountDetail]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[AccountDetail] ([ID])
GO
ALTER TABLE [dbo].[BillDescription]  WITH CHECK ADD FOREIGN KEY([BillID])
REFERENCES [dbo].[Bill] ([ID])
GO
ALTER TABLE [dbo].[BillDescription]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([TypeID])
REFERENCES [dbo].[TypeProduct] ([ID])
GO
