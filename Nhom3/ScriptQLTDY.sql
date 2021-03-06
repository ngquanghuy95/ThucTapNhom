USE [QLThuocYHCT]
GO
/****** Object:  Table [dbo].[AcceptLevel]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcceptLevel](
	[AcceptLevelID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Level] [int] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_AcceptLevel] PRIMARY KEY CLUSTERED 
(
	[AcceptLevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Baithuoc]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baithuoc](
	[BaithuocID] [int] IDENTITY(1,1) NOT NULL,
	[Tenbaithuoc] [nvarchar](200) NULL,
	[DangbaithuocID] [int] NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhdaidien] [nvarchar](200) NULL,
	[BenhlyID] [int] NULL,
	[Lathuochonhop] [bit] NULL,
	[Chucnang] [nvarchar](max) NULL,
	[SDBaithuocID] [int] NULL,
	[DCBaithuocID] [int] NULL,
	[BaoquanID] [int] NULL,
	[Baithuoclienquan] [nvarchar](max) NULL,
	[Trangthai] [bit] NULL,
 CONSTRAINT [PK_Baithuoc] PRIMARY KEY CLUSTERED 
(
	[BaithuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Baoquan]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baoquan](
	[BaoquanID] [int] NOT NULL,
	[Cachbaoquan] [nvarchar](500) NOT NULL,
	[Thoigianbaoquan] [int] NOT NULL,
	[Chuy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Baoquan] PRIMARY KEY CLUSTERED 
(
	[BaoquanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Batphap]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batphap](
	[BatphapID] [int] IDENTITY(1,1) NOT NULL,
	[Tenbatphap] [nvarchar](50) NULL,
	[Chucnang] [nvarchar](200) NULL,
 CONSTRAINT [PK_Batphap] PRIMARY KEY CLUSTERED 
(
	[BatphapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Benhly]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benhly](
	[BenhlyID] [int] IDENTITY(1,1) NOT NULL,
	[Tenbenhky] [nvarchar](200) NULL,
	[NhombenhID] [int] NULL,
	[Nhomdoituong] [int] NULL,
	[Trieuchung] [nvarchar](max) NULL,
	[Phongchong] [nvarchar](max) NULL,
	[Chuy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Benh] PRIMARY KEY CLUSTERED 
(
	[BenhlyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cachbaoche]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cachbaoche](
	[CachbaocheID] [int] NOT NULL,
	[Tencachbaoche] [nvarchar](50) NOT NULL,
	[Mota] [nvarchar](max) NOT NULL,
	[Chuy] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cachbaoche] PRIMARY KEY CLUSTERED 
(
	[CachbaocheID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Capdodoc]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Capdodoc](
	[CaododocID] [int] NOT NULL,
	[Tencapdo] [nvarchar](50) NOT NULL,
	[Mota] [nvarchar](max) NULL,
 CONSTRAINT [PK_Capdodoc] PRIMARY KEY CLUSTERED 
(
	[CaododocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dangbaithuoc]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dangbaithuoc](
	[DangbaithuocID] [int] NOT NULL,
	[Tendangbaithuoc] [nvarchar](50) NOT NULL,
	[Mota] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Dangbaithuoc] PRIMARY KEY CLUSTERED 
(
	[DangbaithuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DCBaithuoc]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DCBaithuoc](
	[DCBaithuocID] [int] NOT NULL,
	[Cachdieuche] [nchar](10) NULL,
 CONSTRAINT [PK_DCBaithuoc] PRIMARY KEY CLUSTERED 
(
	[DCBaithuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Duocly]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Duocly](
	[DuoclyID] [int] IDENTITY(1,1) NOT NULL,
	[Tenduocly] [nvarchar](100) NULL,
	[Chucnang] [nvarchar](200) NULL,
 CONSTRAINT [PK_Duocly] PRIMARY KEY CLUSTERED 
(
	[DuoclyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hinhanh]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hinhanh](
	[HinhanhID] [int] NOT NULL,
	[Duongdan] [nvarchar](500) NOT NULL,
	[Tieude] [nvarchar](500) NULL,
	[Ma] [nvarchar](max) NULL,
 CONSTRAINT [PK_Hinhanh] PRIMARY KEY CLUSTERED 
(
	[HinhanhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loaiduoclieu]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loaiduoclieu](
	[LoaiduoclieuID] [int] IDENTITY(1,1) NOT NULL,
	[Tenloai] [nvarchar](50) NULL,
	[Mota] [nvarchar](200) NULL,
 CONSTRAINT [PK_Loaiduoclieu] PRIMARY KEY CLUSTERED 
(
	[LoaiduoclieuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [int] NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Members]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberID] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nguhanh]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguhanh](
	[NguhanhID] [int] IDENTITY(1,1) NOT NULL,
	[Tennguhanh] [nvarchar](5) NULL,
	[Mausac] [nvarchar](20) NULL,
	[Muivi] [nvarchar](20) NULL,
	[TDNgutang] [nvarchar](20) NULL,
	[TDLucphu] [nvarchar](20) NULL,
 CONSTRAINT [PK_Nguhanh] PRIMARY KEY CLUSTERED 
(
	[NguhanhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhombenh]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhombenh](
	[NhombenhID] [int] IDENTITY(1,1) NOT NULL,
	[Tennhombenh] [nchar](50) NULL,
	[Mota] [nvarchar](200) NULL,
 CONSTRAINT [PK_Loaibenh] PRIMARY KEY CLUSTERED 
(
	[NhombenhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhomdoituong]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhomdoituong](
	[NhomdoituongID] [int] IDENTITY(1,1) NOT NULL,
	[Tennhom] [nvarchar](100) NOT NULL,
	[Gioitinh] [bit] NOT NULL,
	[Dotuoi] [int] NOT NULL,
 CONSTRAINT [PK_Doituong] PRIMARY KEY CLUSTERED 
(
	[NhomdoituongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SDBaithuoc]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SDBaithuoc](
	[SDBaithuocID] [int] NOT NULL,
	[Thoigiansudung] [int] NOT NULL,
	[Donvithoigian] [nvarchar](10) NOT NULL,
	[Lieuluongsudung] [int] NOT NULL,
	[Donvilieuluong] [nvarchar](10) NOT NULL,
	[Chuy] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SDBaithuoc] PRIMARY KEY CLUSTERED 
(
	[SDBaithuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tenkhacvithuoc]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tenkhacvithuoc](
	[TenkhacID] [int] NOT NULL,
	[Tenkhac] [nvarchar](100) NOT NULL,
	[VithuocID] [int] NULL,
 CONSTRAINT [PK_Tenkhacvithuoc] PRIMARY KEY CLUSTERED 
(
	[TenkhacID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TPBaithuoc]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TPBaithuoc](
	[ThanhphanbaithuocID] [int] IDENTITY(1,1) NOT NULL,
	[BaithuocID] [int] NULL,
	[VithuocID] [int] NULL,
	[Khoiluong] [real] NULL,
 CONSTRAINT [PK_Thanhphanbaithuoc] PRIMARY KEY CLUSTERED 
(
	[ThanhphanbaithuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Account] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[UsergroupsID] [int] NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Status] [bit] NOT NULL,
	[Start_Date] [datetime] NOT NULL,
	[End_Date] [datetime] NULL,
 CONSTRAINT [PK_User_1] PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usergroups]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usergroups](
	[UsergroupsID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Usergroups] PRIMARY KEY CLUSTERED 
(
	[UsergroupsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoll]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoll](
	[Account] [nvarchar](100) NOT NULL,
	[RollName] [nvarchar](50) NULL,
	[AcceptLevelID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_UserRoll] PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vithuoc]    Script Date: 4/21/2016 10:44:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vithuoc](
	[VithuocID] [int] IDENTITY(1,1) NOT NULL,
	[Tenvithuoc] [nvarchar](100) NULL,
	[Mota] [nvarchar](max) NULL,
	[AnhdaidienID] [nvarchar](100) NULL,
	[NguhanhID] [int] NULL,
	[BatphapID] [int] NULL,
	[DuoclyID] [int] NULL,
	[LoaiduoclieuID] [int] NULL,
	[Chucnang] [nvarchar](max) NULL,
	[Cachdung] [nvarchar](max) NULL,
	[BaoquanID] [int] NULL,
	[CachbaocheID] [int] NULL,
	[CapdodocID] [int] NULL,
	[Trangthai] [bit] NULL,
 CONSTRAINT [PK_Vithuoc] PRIMARY KEY CLUSTERED 
(
	[VithuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Baithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Baithuoc_Baoquan] FOREIGN KEY([BaoquanID])
REFERENCES [dbo].[Baoquan] ([BaoquanID])
GO
ALTER TABLE [dbo].[Baithuoc] CHECK CONSTRAINT [FK_Baithuoc_Baoquan]
GO
ALTER TABLE [dbo].[Baithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Baithuoc_Benhly] FOREIGN KEY([BenhlyID])
REFERENCES [dbo].[Benhly] ([BenhlyID])
GO
ALTER TABLE [dbo].[Baithuoc] CHECK CONSTRAINT [FK_Baithuoc_Benhly]
GO
ALTER TABLE [dbo].[Baithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Baithuoc_Dangbaithuoc] FOREIGN KEY([DangbaithuocID])
REFERENCES [dbo].[Dangbaithuoc] ([DangbaithuocID])
GO
ALTER TABLE [dbo].[Baithuoc] CHECK CONSTRAINT [FK_Baithuoc_Dangbaithuoc]
GO
ALTER TABLE [dbo].[Baithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Baithuoc_DCBaithuoc] FOREIGN KEY([DCBaithuocID])
REFERENCES [dbo].[DCBaithuoc] ([DCBaithuocID])
GO
ALTER TABLE [dbo].[Baithuoc] CHECK CONSTRAINT [FK_Baithuoc_DCBaithuoc]
GO
ALTER TABLE [dbo].[Baithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Baithuoc_SDBaithuoc] FOREIGN KEY([SDBaithuocID])
REFERENCES [dbo].[SDBaithuoc] ([SDBaithuocID])
GO
ALTER TABLE [dbo].[Baithuoc] CHECK CONSTRAINT [FK_Baithuoc_SDBaithuoc]
GO
ALTER TABLE [dbo].[Benhly]  WITH CHECK ADD  CONSTRAINT [FK_Benhly_Nhombenh] FOREIGN KEY([NhombenhID])
REFERENCES [dbo].[Nhombenh] ([NhombenhID])
GO
ALTER TABLE [dbo].[Benhly] CHECK CONSTRAINT [FK_Benhly_Nhombenh]
GO
ALTER TABLE [dbo].[Benhly]  WITH CHECK ADD  CONSTRAINT [FK_Benhly_Nhomdoituong] FOREIGN KEY([Nhomdoituong])
REFERENCES [dbo].[Nhomdoituong] ([NhomdoituongID])
GO
ALTER TABLE [dbo].[Benhly] CHECK CONSTRAINT [FK_Benhly_Nhomdoituong]
GO
ALTER TABLE [dbo].[Tenkhacvithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Tenkhacvithuoc_Vithuoc] FOREIGN KEY([VithuocID])
REFERENCES [dbo].[Vithuoc] ([VithuocID])
GO
ALTER TABLE [dbo].[Tenkhacvithuoc] CHECK CONSTRAINT [FK_Tenkhacvithuoc_Vithuoc]
GO
ALTER TABLE [dbo].[TPBaithuoc]  WITH CHECK ADD  CONSTRAINT [FK_TPBaithuoc_Baithuoc] FOREIGN KEY([BaithuocID])
REFERENCES [dbo].[Baithuoc] ([BaithuocID])
GO
ALTER TABLE [dbo].[TPBaithuoc] CHECK CONSTRAINT [FK_TPBaithuoc_Baithuoc]
GO
ALTER TABLE [dbo].[TPBaithuoc]  WITH CHECK ADD  CONSTRAINT [FK_TPBaithuoc_Vithuoc] FOREIGN KEY([VithuocID])
REFERENCES [dbo].[Vithuoc] ([VithuocID])
GO
ALTER TABLE [dbo].[TPBaithuoc] CHECK CONSTRAINT [FK_TPBaithuoc_Vithuoc]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Usergroups] FOREIGN KEY([UsergroupsID])
REFERENCES [dbo].[Usergroups] ([UsergroupsID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Usergroups]
GO
ALTER TABLE [dbo].[UserRoll]  WITH CHECK ADD  CONSTRAINT [FK_UserRoll_AcceptLevel] FOREIGN KEY([AcceptLevelID])
REFERENCES [dbo].[AcceptLevel] ([AcceptLevelID])
GO
ALTER TABLE [dbo].[UserRoll] CHECK CONSTRAINT [FK_UserRoll_AcceptLevel]
GO
ALTER TABLE [dbo].[UserRoll]  WITH CHECK ADD  CONSTRAINT [FK_UserRoll_User] FOREIGN KEY([Account])
REFERENCES [dbo].[User] ([Account])
GO
ALTER TABLE [dbo].[UserRoll] CHECK CONSTRAINT [FK_UserRoll_User]
GO
ALTER TABLE [dbo].[UserRoll]  WITH CHECK ADD  CONSTRAINT [FK_UserRoll_User1] FOREIGN KEY([Account])
REFERENCES [dbo].[User] ([Account])
GO
ALTER TABLE [dbo].[UserRoll] CHECK CONSTRAINT [FK_UserRoll_User1]
GO
ALTER TABLE [dbo].[Vithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Vithuoc_Baoquan] FOREIGN KEY([BaoquanID])
REFERENCES [dbo].[Baoquan] ([BaoquanID])
GO
ALTER TABLE [dbo].[Vithuoc] CHECK CONSTRAINT [FK_Vithuoc_Baoquan]
GO
ALTER TABLE [dbo].[Vithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Vithuoc_Batphap1] FOREIGN KEY([BatphapID])
REFERENCES [dbo].[Batphap] ([BatphapID])
GO
ALTER TABLE [dbo].[Vithuoc] CHECK CONSTRAINT [FK_Vithuoc_Batphap1]
GO
ALTER TABLE [dbo].[Vithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Vithuoc_Cachbaoche] FOREIGN KEY([CachbaocheID])
REFERENCES [dbo].[Cachbaoche] ([CachbaocheID])
GO
ALTER TABLE [dbo].[Vithuoc] CHECK CONSTRAINT [FK_Vithuoc_Cachbaoche]
GO
ALTER TABLE [dbo].[Vithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Vithuoc_Capdodoc] FOREIGN KEY([CapdodocID])
REFERENCES [dbo].[Capdodoc] ([CaododocID])
GO
ALTER TABLE [dbo].[Vithuoc] CHECK CONSTRAINT [FK_Vithuoc_Capdodoc]
GO
ALTER TABLE [dbo].[Vithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Vithuoc_Duocly] FOREIGN KEY([DuoclyID])
REFERENCES [dbo].[Duocly] ([DuoclyID])
GO
ALTER TABLE [dbo].[Vithuoc] CHECK CONSTRAINT [FK_Vithuoc_Duocly]
GO
ALTER TABLE [dbo].[Vithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Vithuoc_Loaiduoclieu1] FOREIGN KEY([LoaiduoclieuID])
REFERENCES [dbo].[Loaiduoclieu] ([LoaiduoclieuID])
GO
ALTER TABLE [dbo].[Vithuoc] CHECK CONSTRAINT [FK_Vithuoc_Loaiduoclieu1]
GO
ALTER TABLE [dbo].[Vithuoc]  WITH CHECK ADD  CONSTRAINT [FK_Vithuoc_Nguhanh] FOREIGN KEY([NguhanhID])
REFERENCES [dbo].[Nguhanh] ([NguhanhID])
GO
ALTER TABLE [dbo].[Vithuoc] CHECK CONSTRAINT [FK_Vithuoc_Nguhanh]
GO
