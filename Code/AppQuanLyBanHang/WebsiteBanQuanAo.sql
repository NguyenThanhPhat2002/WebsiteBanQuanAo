CREATE DATABASE [WebsiteBanQuanAo]
GO

USE [WebsiteBanQuanAo]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 06-12-2023 10:21:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brand_id] [int] NOT NULL,
	[brand_name] [varchar](50) NOT NULL,
	[avatar] [varchar](50) NULL,
	[show_on_home_page] [bit] NULL,
	[display_order] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06-12-2023 10:21:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] NOT NULL,
	[category_name] [varchar](50) NOT NULL,
	[avatar] [varchar](50) NULL,
	[show_on_home_page] [bit] NULL,
	[deleted] [bit] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 06-12-2023 10:21:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] NOT NULL,
	[user_id] [int] NULL,
	[order_name] [nvarchar](50) NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[status] [int] NULL,
	[created] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06-12-2023 10:21:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] NOT NULL,
	[product_name] [varchar](50) NOT NULL,
	[brand_id] [int] NULL,
	[category_id] [int] NULL,
	[short_des] [nvarchar](100) NULL,
	[full_des] [nvarchar](100) NULL,
	[price] [float] NULL,
	[price_discount] [float] NULL,
	[type_id] [int] NULL,
	[deleted] [bit] NULL,
	[show_on_home_page] [bit] NULL,
	[display_order] [int] NULL,
	[created] [datetime] NULL,
	[updated] [datetime] NULL,
	[avatar] [varchar](50) NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06-12-2023 10:21:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] NOT NULL,
	[user_first_name] [varchar](50) NOT NULL,
	[user_last_name] [varchar](50) NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](50) NULL,
	[is_admin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bunker](
	[bunker_id] [int] NOT NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[soluong] [int] NULL,
	[created] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[bunker_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Bunker] ([bunker_id], [product_id], [soluong], [price], [created]) VALUES (1, 2, 50,500000, NULL)
INSERT [dbo].[Bunker] ([bunker_id], [product_id], [soluong], [price], [created]) VALUES (2, 1, 40,500000, NULL)

INSERT [dbo].[Brand] ([brand_id], [brand_name], [avatar], [show_on_home_page], [display_order], [created], [updated], [deleted]) VALUES (1, N'Adidas', N'adidas.jpg', 1, 1, NULL, NULL, 0)
INSERT [dbo].[Brand] ([brand_id], [brand_name], [avatar], [show_on_home_page], [display_order], [created], [updated], [deleted]) VALUES (2, N'Nike', N'nike.jpg', 1, 2, NULL, NULL, 0)
INSERT [dbo].[Brand] ([brand_id], [brand_name], [avatar], [show_on_home_page], [display_order], [created], [updated], [deleted]) VALUES (3, N'LouisVuitton', N'louis.jpg', 1, 3, NULL, NULL, 0)
INSERT [dbo].[Brand] ([brand_id], [brand_name], [avatar], [show_on_home_page], [display_order], [created], [updated], [deleted]) VALUES (4, N'Hermes', N'hermes.jpg', 1, 4, NULL, NULL, 0)
GO
INSERT [dbo].[Category] ([category_id], [category_name], [avatar], [show_on_home_page], [deleted], [created], [updated]) VALUES (1, N'Áo', N'ao.jpg', 1, 0, NULL, NULL)
INSERT [dbo].[Category] ([category_id], [category_name], [avatar], [show_on_home_page], [deleted], [created], [updated]) VALUES (2, N'Quân', N'quan.jpg', 1, 0, NULL, NULL)
INSERT [dbo].[Category] ([category_id], [category_name], [avatar], [show_on_home_page], [deleted], [created], [updated]) VALUES (3, N'Túi xách ', N'tuixach.jpg', 1, 0, NULL, NULL)
INSERT [dbo].[Category] ([category_id], [category_name], [avatar], [show_on_home_page], [deleted], [created], [updated]) VALUES (4, N'Ðông Hô', N'dongho.jpg', 1, 0, NULL, NULL)
INSERT [dbo].[Category] ([category_id], [category_name], [avatar], [show_on_home_page], [deleted], [created], [updated]) VALUES (5, N'Giày', N'giay.jpg', 1, 0, NULL, NULL)
GO
INSERT [dbo].[Orders] ([order_id], [user_id], [order_name], [product_id], [price], [status], [created]) VALUES (0, NULL, N'DonHang-20231130103158', NULL, NULL, 1, CAST(N'2023-11-30T10:31:58.440' AS DateTime))
INSERT [dbo].[Orders] ([order_id], [user_id], [order_name], [product_id], [price], [status], [created]) VALUES (1, 0, N'DonHang-20231206100942', 0, 0, 1, CAST(N'2023-12-06T10:09:42.163' AS DateTime))
INSERT [dbo].[Orders] ([order_id], [user_id], [order_name], [product_id], [price], [status], [created]) VALUES (2, 1, N'DonHang-20231206101058', 1, 0, 1, CAST(N'2023-12-06T10:10:58.347' AS DateTime))
INSERT [dbo].[Orders] ([order_id], [user_id], [order_name], [product_id], [price], [status], [created]) VALUES (3, 1, N'DonHang-20231206101301', 1, 50000, 1, CAST(N'2023-12-06T10:13:01.770' AS DateTime))
GO
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (1, N'Áo ngan Adidas', 1, 1, N'Áo thun nam tay ngắn adidas - HS3215', N'Thành tích thể thao: tập trung vào tính năng của sản phẩm đáp ứng cho các VĐV chuyên nghiệp', 200000, 5, 1, NULL, 1, 1, NULL, NULL, N'aonganadidas.jpg', 15)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (2, N'Quân ngan Adidas', 1, 2, N'QUẦN SHORT OWN THE RUN', N'Làm từ một nhóm chất liệu tái chế và có chứa ít nhất 60% thành phần tái chế', 300000, 6, 1, NULL, 1, 1, NULL, NULL, N'quannganadidas.jpg', 20)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (3, N'Túi xách Adidas', 1, 3, N'Túi xách adidas Linear Core Duffel Bag Small - Black - DT4826', N'Túi xách adidas Linear Core Duffel Bag Small - Black - DT4826 Chính hãng', 450000, 8, 2, NULL, 1, 1, NULL, NULL, N'tuixachadidas.jpg', 24)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (4, N'Ðông Hô Adidas', 1, 4, N'Đồng Hồ Adidas Process SP1 Watch Navy', N'ĐỒNG HỒ PROCESS_SP1 WATCH là một chiếc đồng hồ với những màu rất cơ bản', 120000, 10, 2, NULL, 1, 1, NULL, NULL, N'donghoadidas.jpg', 19)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (5, N'Giày Adidas', 1, 5, N'GIÀY NMD_S1 BAJOWOO', N'Dòng giày adidas NMD luôn bứt phá giới hạn và hướng tới tương lai', 300000, 12, 2, NULL, 1, 1, NULL, NULL, N'giayadidas.jpg', 0)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (6, N'Áo ngan Nike', 2, 1, N'Áo Tay Ngắn Thể Thao Nam Nike Dri-FIT Run Division Rise 365', N'Gọn nhẹ và thoáng khí là những đặc điểm nổi bật nhất của chiếc áo tay ngắn thể thao', 150000, 15, 1, NULL, 1, 1, NULL, NULL, N'aongannike.jpg', 10)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (7, N'Quân ngan Nike', 2, 2, N'Hàng Chính Hãng Quần Short Nike SB Black 2021** CI5853-010', N'Quần Đùi Nike Basic 1Logo Thêu nổi
Chất liệu: thun, logo Thêu Nổi', 267000, 10, 1, NULL, 1, 1, NULL, NULL, N'quanngannike.jpg', 20)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (8, N'Túi xách Nike', 2, 3, N'Túi Xách Tập Luyện Nam Nike Nk Vpr Speed S Duff BA5569-010', N'Kích thước : 23cm L x 5cm W x 15cm H ( 3L)
Chất liệu : 100%Polyester', 350000, 13, 2, NULL, 1, 1, NULL, NULL, N'tuixachnike.jpg', 0)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (9, N'Ðông Hô Nike', 2, 4, N'Apple Watch SE Nike - 44mm - GPS - mặt nhôm, dây cao su', N'Apple Watch SE Nike với tính năng chăm sóc sức khoẻ tuyệt vời kèm theo đó là thiết kế dây thể thao', 400000, 4, 2, NULL, 1, 1, NULL, NULL, N'donghonike.jpg', 35)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (10, N'Giày Nike', 2, 5, N'Giày Thể Thao Nike Fw Nike Court Borough Low 2', N'Sự thoải mái và phong cách sẽ được kết hợp nhịp nhàng với nhau trong Nike Court Borough Low 2', 450000, 5, 2, NULL, 1, 1, NULL, NULL, N'giaynike.jpg', 40)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (11, N'Áo LouisVuitton', 3, 1, N'Áo Thun Họa Tiết Monogram', N'Được may từ vải Cotton Jersey hữu cơ mềm mại, mẫu áo thun mang đến điểm nhấn tươi mới', 470000, 7, 1, NULL, 1, 1, NULL, NULL, N'aolouis.jpg', 0)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (12, N'Quân LouisVuitton', 3, 2, N'Quần Dài Dáng Thể Thao', N'Mẫu quần dài dáng thể thao sở hữu vẻ ngoài ấn tượng lấy cảm hứng từ hiện tượng cực quang kỳ ảo', 500000, 8, 1, NULL, 1, 1, NULL, NULL, N'quanlouis.jpg', 50)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (13, N'Túi xách LouisVuitton', 3, 3, N'Túi xách Louis Vuitton MTX04', N'Chất liệu: da cao cấp, mềm mại
Kích thước:28 x 20 x 13 cm', 350000, 9, 2, NULL, 1, 1, NULL, NULL, N'tuixachlouis.jpg', 60)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (14, N'Ðông Hô LouisVuitton', 3, 4, N'ĐỒNG HỒ LOUIS VUITTON TAMBOUR OPERA AUTOMATA', N'Bộ máy lên dây cót thủ công LV525 của nó được xây dựng dựa trên Carpe Diem 2021', 700000, 12, 2, NULL, 1, 1, NULL, NULL, N'dongholouis.jpg', 40)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (15, N'Giày LouisVuitton', 3, 5, N'Giày Louis Vuitton LV Trainer Black White', N'Mẫu Giày thể thao Louis Vuitton với màu mới thu đông', 600000, 13, 2, NULL, 1, 1, NULL, NULL, N'giaylouis.jpg', 0)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (16, N'Áo  Hermes', 4, 1, N'Áo phông Hermes màu đen họa tiết cổ viền cam logo ngựa APH08', N'Áo phông Hermes màu đen họa tiết cổ viền cam logo ngựa APH08', 400000, 14, 1, NULL, 1, 1, NULL, NULL, N'aohermes.jpg', 45)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (17, N'Quân Hermes', 4, 2, N'QUẦN ÂU NAM HERMES* THÊU LOGO ĐẸP SIÊU CẤP', N'Chất liệu cotton trơn màu cổ điển, phong cách thanh lịch và đứng đắn, thắt lưng nam', 300000, 15, 1, NULL, 1, 1, NULL, NULL, N'quanhermes.jpg', 30)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (18, N'Túi xách Hermes', 4, 3, N'Túi xách Hermes Birkin màu xanh nhạt size 25 – HBX024', N'Túi xách Hermes Birkin màu xanh nhạt size 25 – HBX024 là dòng like auth cao cấp hermes', 200000, 10, 2, NULL, 1, 1, NULL, NULL, N'tuixachhermes.jpg', 55)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (19, N'Ðông Hô Hermes', 4, 4, N'Đồng hồ nữ Hermes Heure cao cấp', N'▪️ máy Thụy sỹ. Hàng siêu nét
▪️ thép không gỉ , dây da bê bền bỉ ', 100000, 12, 2, NULL, 1, 1, NULL, NULL, N'donghohermes.jpg', 60)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (20, N'Giày Hermes', 4, 5, N'Giày lười Hermes da cá sấu họa tiết khóa chữ H màu đen GLH09', N'Giày lười Hermes da cá sấu họa tiết khóa chữ H màu đen GLH09 siêu cấp ', 400000, 13, 2, NULL, 1, 1, NULL, NULL, N'giayhermes.jpg', 65)
INSERT [dbo].[Product] ([product_id], [product_name], [brand_id], [category_id], [short_des], [full_des], [price], [price_discount], [type_id], [deleted], [show_on_home_page], [display_order], [created], [updated], [avatar], [soluong]) VALUES (31, N'def', NULL, NULL, N'abc', N'abc12345', 50000, 5, 1, NULL, NULL, -1, NULL, NULL, N'aohermes.jpg', 20)
GO
INSERT [dbo].[Users] ([user_id], [user_first_name], [user_last_name], [email], [password], [is_admin]) VALUES (0, N'Nguy?n ', N'Thành Phát', N'phat16102002abc@gmail.com', N'123456', 1)
GO
