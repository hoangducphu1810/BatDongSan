USE [BatDongSan]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 25/01/2019 8:53:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[KhachHangID] [int] IDENTITY(1,1) NOT NULL,
	[KhachHangName] [nvarchar](50) NULL,
	[TenTK] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[NgaySinh] [datetime] NULL,
	[SDT] [nvarchar](50) NULL,
	[GioiTinh] [bit] NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[KhachHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiNhaDat]    Script Date: 25/01/2019 8:53:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhaDat](
	[LoaiNhaDatID] [int] NOT NULL,
	[LoaiNhaDatName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LoaiNhaDatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 25/01/2019 8:53:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [int] NOT NULL,
	[MenuName] [nvarchar](100) NULL,
	[Link] [nvarchar](max) NULL,
	[Parentid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaDat]    Script Date: 25/01/2019 8:53:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaDat](
	[NhaDatID] [int] IDENTITY(1,1) NOT NULL,
	[LoaiNhaDatID] [int] NULL,
	[KhachHangID] [int] NULL,
	[Gia] [nvarchar](50) NULL,
	[ThanhPho] [nvarchar](30) NULL,
	[DienTich] [nvarchar](30) NULL,
	[SDT] [nvarchar](12) NULL,
	[DiaDiem] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[Mota] [nvarchar](max) NULL,
	[NgayDang] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NhaDatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slider]    Script Date: 25/01/2019 8:53:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Slider](
	[SliderID] [int] NOT NULL,
	[images] [varchar](max) NULL,
	[Link] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25/01/2019 8:53:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Passwords] [varchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Avatar] [nvarchar](max) NULL,
	[Email] [varchar](50) NULL,
	[Rules] [nvarchar](50) NULL,
	[Status] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([KhachHangID], [KhachHangName], [TenTK], [pass], [DiaChi], [NgaySinh], [SDT], [GioiTinh], [Email]) VALUES (1, N'Hoàng Đức Phú', N'DucPhu', N'123456', N'Văn Hương,Tôn Đức Thắng', CAST(N'1997-10-18 00:00:00.000' AS DateTime), N'0916181097', 1, N'hoangducphu181097@gmail.com')
INSERT [dbo].[KhachHang] ([KhachHangID], [KhachHangName], [TenTK], [pass], [DiaChi], [NgaySinh], [SDT], [GioiTinh], [Email]) VALUES (2, N'Phạm Văn Thương', N'thuongpv', N'123456', N'Hải Dương', CAST(N'1993-05-18 00:00:00.000' AS DateTime), N'0916181097', 1, N'thuongpv@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[LoaiNhaDat] ([LoaiNhaDatID], [LoaiNhaDatName]) VALUES (1, N'Mặt Phố')
INSERT [dbo].[LoaiNhaDat] ([LoaiNhaDatID], [LoaiNhaDatName]) VALUES (2, N'Chung Cư')
INSERT [dbo].[Menu] ([MenuID], [MenuName], [Link], [Parentid]) VALUES (11, N'Trang Chủ', N'/Home/Index', 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [Link], [Parentid]) VALUES (12, N'Nhà Đất', N'/NhaDat/Index', 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [Link], [Parentid]) VALUES (13, N'Tin Tức', N'/TinTuc/Index', 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [Link], [Parentid]) VALUES (14, N'Team', N'/LienHe/Index', 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [Link], [Parentid]) VALUES (15, N'Liên Hệ', N'/Google/Index', 1)
SET IDENTITY_INSERT [dbo].[NhaDat] ON 

INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (1, 1, NULL, N'10 TỶ VND', N'Hà Nội', N'50 m2', N'09123456789', N'450 Xã Đàn', N'/Content/images/NhaDat/nd1.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-01 00:00:00.000' AS DateTime), CAST(N'2019-02-01 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (2, 1, NULL, N'15 TỶ VND', N'Hà Nội', N'60 m2', N'0912121212', N'75 Xã Đàn', N'/Content/images/NhaDat/nd2.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-02 00:00:00.000' AS DateTime), CAST(N'2019-02-02 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (3, 1, NULL, N'17 TỶ VND', N'Hà Nội', N'70 m2', N'0909090909', N'350 Tôn Đức Thắng', N'/Content/images/NhaDat/nd3.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-03 00:00:00.000' AS DateTime), CAST(N'2019-02-03 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (4, 1, NULL, N'18TỶ VND', N'Hà Nội', N'80 m2', N'0808088688', N'75 Tôn Đức Thắng', N'/Content/images/NhaDat/nd4.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-04 00:00:00.000' AS DateTime), CAST(N'2019-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (5, 1, NULL, N'20 TỶ VND', N'Hà Nội', N'90 m2', N'0909452512', N'152 Tôn Đức Thắng', N'/Content/images/NhaDat/nd5.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-05 00:00:00.000' AS DateTime), CAST(N'2019-02-05 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (6, 1, NULL, N'25 TỶ VND', N'Hà Nội', N'100 m2', N'0912356789', N'32 Nguyễn Thái Học', N'/Content/images/NhaDat/nd6.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-06 00:00:00.000' AS DateTime), CAST(N'2019-02-06 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (7, 1, NULL, N'30 TỶ VND', N'Hà Nội', N'110 m2', N'0916181097', N'65 Nguyễn Thái Học', N'/Content/images/NhaDat/nd7.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-07 00:00:00.000' AS DateTime), CAST(N'2019-02-07 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (8, 1, NULL, N'35 TỶ VND', N'Hà Nội', N'45 m2', N'0912399999', N'75 Nguyễn Thái Học', N'/Content/images/NhaDat/nd8.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-08 00:00:00.000' AS DateTime), CAST(N'2019-02-08 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (9, 2, NULL, N'40 TỶ VND', N'Hà Nội', N'95 m2', N'0945678910', N'139 Nguyễn Thái Học', N'/Content/images/NhaDat/nd9.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-09 00:00:00.000' AS DateTime), CAST(N'2019-02-09 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (10, 2, NULL, N'42TỶ VND', N'Hà Nội', N'125 m2', N'0937999999', N'52 Nguyễn Thái Học', N'/Content/images/NhaDat/nd10.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-10 00:00:00.000' AS DateTime), CAST(N'2019-02-10 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (11, 2, NULL, N'45 TỶ VND', N'Hà Nội', N'200 m2', N'0868686868', N'75 Cầu Giấy', N'/Content/images/NhaDat/nd11.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-11 00:00:00.000' AS DateTime), CAST(N'2019-02-11 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (12, 2, NULL, N'48 TỶ VND', N'Hà Nội', N'300 m2', N'0386899999', N'91 Cầu Giấy', N'/Content/images/NhaDat/nd12.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-12 00:00:00.000' AS DateTime), CAST(N'2019-02-12 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (13, 2, NULL, N'52 TỶ VND', N'Hà Nội', N'350 m2', N'0890099999', N'88 Hoàng Cầu', N'/Content/images/NhaDat/nd13.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-13 00:00:00.000' AS DateTime), CAST(N'2019-02-13 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (14, 2, NULL, N'100 TỶ VND', N'Hà Nội', N'320 m2', N'0945123456', N'196 Tôn Đức Thắng', N'/Content/images/NhaDat/nd14.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-03-15 00:00:00.000' AS DateTime), CAST(N'2019-06-15 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (15, 1, 1, N'23 TỶ VND', N'Hà Nội', N'35m2', N'0956556565', N'25 Nguyễn Văn Cừ', N'/Content/images/NhaDat/nd16.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-07-16 00:00:00.000' AS DateTime), CAST(N'2019-08-16 00:00:00.000' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (16, 1, 1, N'120 TỶ VND', NULL, N'300m2', N'0252000000', N'Nguyễn Thái Học', N'/Content/images/NhaDat/nd15.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-25 13:29:02.467' AS DateTime), CAST(N'2019-01-25 13:29:02.467' AS DateTime))
INSERT [dbo].[NhaDat] ([NhaDatID], [LoaiNhaDatID], [KhachHangID], [Gia], [ThanhPho], [DienTich], [SDT], [DiaDiem], [HinhAnh], [Mota], [NgayDang], [NgayHetHan]) VALUES (17, 2, 2, N'15 TỶ VND', NULL, N'100m2', N'091254666', N'50 Quang Trung, Hà Đông', N'/Content/images/NhaDat/nd17.jpg', N'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet. Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', CAST(N'2019-01-25 20:35:23.163' AS DateTime), CAST(N'2019-01-25 20:35:23.163' AS DateTime))
SET IDENTITY_INSERT [dbo].[NhaDat] OFF
INSERT [dbo].[Users] ([UserID], [Username], [Passwords], [FullName], [Avatar], [Email], [Rules], [Status]) VALUES (1, N'HoangPhu', N'123456', N'HoangDucPhu', NULL, NULL, N'admin', N'c')
ALTER TABLE [dbo].[NhaDat]  WITH CHECK ADD FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[NhaDat]  WITH CHECK ADD FOREIGN KEY([LoaiNhaDatID])
REFERENCES [dbo].[LoaiNhaDat] ([LoaiNhaDatID])
GO
