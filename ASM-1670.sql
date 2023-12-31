USE [master]
GO
/****** Object:  Database [1670-ASM]    Script Date: 12/19/2023 8:06:37 AM ******/
CREATE DATABASE [1670-ASM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'1670-ASM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\1670-ASM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'1670-ASM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\1670-ASM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [1670-ASM] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [1670-ASM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [1670-ASM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [1670-ASM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [1670-ASM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [1670-ASM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [1670-ASM] SET ARITHABORT OFF 
GO
ALTER DATABASE [1670-ASM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [1670-ASM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [1670-ASM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [1670-ASM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [1670-ASM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [1670-ASM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [1670-ASM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [1670-ASM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [1670-ASM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [1670-ASM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [1670-ASM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [1670-ASM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [1670-ASM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [1670-ASM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [1670-ASM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [1670-ASM] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [1670-ASM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [1670-ASM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [1670-ASM] SET  MULTI_USER 
GO
ALTER DATABASE [1670-ASM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [1670-ASM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [1670-ASM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [1670-ASM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [1670-ASM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [1670-ASM] SET QUERY_STORE = OFF
GO
USE [1670-ASM]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Picture] [nvarchar](max) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/19/2023 8:06:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231202051241_initialCreate', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231205024102_Order', N'7.0.13')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'AD', N'Admin', N'Admin', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'CUS', N'Customer', N'Customer', N'Customer')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'118370631458161067499', N'Google', N'c736fca6-a450-45a2-be54-506b5985f8fd')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'60bd59ac-6635-400c-b728-ca9f304e3db4', N'AD')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bdabb7b2-5af8-4a74-aa21-a9c6903c6458', N'CUS')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'60bd59ac-6635-400c-b728-ca9f304e3db4', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJYmsNwb8C9cbCxmLK2UIqrRqbM9FKxkXUnZhPedYpprRlp48GYBSIfKDZF1MtDHbw==', N'6JKNO4V6BN4EJ3FHVFKC7G4QTGU334A7', N'51500b89-74a5-4d74-9eb7-ce67afa8d34f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bdabb7b2-5af8-4a74-aa21-a9c6903c6458', N'test1@gmail.com', N'TEST1@GMAIL.COM', N'test1@gmail.com', N'TEST1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEC1tq7WpjsDI+6Tmmk49TbgQlbudLCjymR+l26KPnDGaBvumMtQN4V2pQ/iXQ2IV1w==', N'A4STLKIS5LHQOB5YQQNCORJGTTKCLLDB', N'3e0d125b-82d0-4746-a099-f089ae205bf6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c736fca6-a450-45a2-be54-506b5985f8fd', N'nguyentrungtest2292003@gmail.com', N'NGUYENTRUNGTEST2292003@GMAIL.COM', N'nguyentrungtest2292003@gmail.com', N'NGUYENTRUNGTEST2292003@GMAIL.COM', 0, NULL, N'XZ7YF72SCUQMC2NP3R3WMTMWD5KWASNE', N'ebcbd977-afc1-4cd1-930b-ae816a15ea0c', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (1, N'One Piece (Omnibus Edition), Vol. 1 : Includes Vols. 1, 2 & 3', N'Join Monkey D. Luffy and his swashbuckling crew in their search for the ultimate treasure, the One Piece. As a child, Monkey D. Luffy dreamed of becoming King of the Pirates. But his life changed when he accidentally ate the Gum-Gum Fruit, an enchanted Devil Fruit that gave him the ability to stretch like rubber. Its only drawback? He''ll never be able to swim again--a serious handicap for an aspiring sea dog Years later, Luffy sets off on his quest to find the "One Piece," said to be the greatest treasure in the world... Get Ready to Set Sail The treasure trove of high seas adventures just got bigger with this collection of the first three volumes of One Piece', N'Eiichiro Oda', CAST(17.00 AS Decimal(18, 2)), 4, N'7fd813ba-57a7-41ae-b36b-a1823b6535c2_1421536250.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (2, N'Jojo''s Bizarre Adventure : Part 1--Phantom Blood, Vol. 1', N'A multigenerational tale of the heroic Joestar family and their never-ending battle against evil The legendary Shonen Jump series, now available in English for the first time, in a deluxe edition featuring color pages and newly drawn cover art JoJo''s Bizarre Adventure is a groundbreaking manga famous for its outlandish characters, wild humor and frenetic battles. A multigenerational tale of the heroic Joestar family and their never-ending battle against evil Young Jonathan Joestar''s life is forever changed when he meets his new adopted brother, Dio. For some reason, Dio has a smoldering grudge against him and derives pleasure from seeing him suffer. But every man has his limits, as Dio finds out. This is the beginning of a long and hateful relationship', N'Hirohiko Araki', CAST(20.00 AS Decimal(18, 2)), 3, N'cb1040f8-c386-49cf-9998-d4ce04efcbe9_1421578794.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (3, N'Sakamoto Days, Vol. 1', N'Kill some time with former hit man Taro Sakamoto Taro Sakamoto was once a legendary hit man considered the greatest of all time. Bad guys feared him Assassins revered him But then one day he quit, got married, and had a baby. He''s now living the quiet life as the owner of a neighborhood store, but how long can Sakamoto enjoy his days of retirement before his past catches up to him? Time has passed peacefully for Sakamoto since he left the underworld. He''s running a neighborhood store with his lovely wife and child and has gotten a bit...out of shape. But one day a figure from his past pays him a visit with an offer he can''t refuse: return to the assassin world or die', N'Yuto Suzuki', CAST(10.00 AS Decimal(18, 2)), 5, N'29f46619-ba12-40fe-b1bb-7d8b771ba77f_1974728943_b.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (4, N'Komi Can''t Communicate, Vol. 1', N'The journey to 100 friends begins with a single conversation. Socially anxious high school student Shoko Komi''s greatest dream is to make some friends, but everyone at school mistakes her crippling social anxiety for cool reserve With the whole student body keeping their distance and Komi unable to utter a single word, friendship might be forever beyond her reach. Timid Tadano is a total wallflower, and that''s just the way he likes it. But all that changes when he finds himself alone in a classroom on the first day of high school with the legendary Komi. He quickly realizes she isn''t aloof--she''s just super awkward. Now he''s made it his mission to help her on her quest to make 100 friends', N'Tomohito Oda', CAST(10.00 AS Decimal(18, 2)), 1, N'24165789-2134-4118-ba72-7ec5bb26da0f_1974707121.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (5, N'Dr. Stone, Vol. 1', N'Imagine waking to a world where every last human has been mysteriously turned to stone... One fateful day, all of humanity turned to stone. Many millennia later, Taiju frees himself from the petrification and finds himself surrounded by statues. The situation looks grim--until he runs into his science-loving friend Senku Together they plan to restart civilization with the power of science One fateful day, all of humanity was petrified by a blinding flash of light. After several millennia, high schooler Taiju awakens and finds himself lost in a world of statues. However, he''s not alone His science-loving friend Senku''s been up and running for a few months and he''s got a grand plan in mind--to kickstart civilization with the power of science', N'Riichiro Inagaki and Boichi', CAST(10.00 AS Decimal(18, 2)), 6, N'80c211b9-52f9-4e78-821d-5cb6a9e3c042_1974702618.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (6, N'Jujutsu Kaisen 0', N'The prequel to the supernatural exorcist adventure Jujutsu Kaisen In a world where cursed spirits feed on unsuspecting humans, fragments of the legendary and feared demon Ryomen Sukuna have been lost and scattered about. Should any demon consume Sukuna''s body parts, the power they gain could destroy the world as we know it. Fortunately, there exists a mysterious school of jujutsu sorcerers who exist to protect the precarious existence of the living from the supernatural Yuta Okkotsu is a nervous high school student who is suffering from a serious problem--his childhood friend Rika has turned into a Curse and won''t leave him alone. Since Rika is no ordinary Curse, his plight is noticed by Satoru Gojo, a teacher at Jujutsu High, a school where fledgling exorcists learn how to combat Curses. Gojo convinces Yuta to enroll, but can he learn enough in time to confront the Curse that haunts him?', N'Gege Akutami', CAST(10.00 AS Decimal(18, 2)), 5, N'1713ef57-ff77-4d51-b400-d7fb52206160_1974720144_b.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (7, N'One-Punch Man, Vol. 27', N'Life gets pretty boring when you can beat the snot out of any villain with just one punch. Nothing about Saitama passes the eyeball test when it comes to superheroes, from his lifeless expression to his bald head to his unimpressive physique. However, this average-looking guy has a not-so-average problem--he just can''t seem to find an opponent strong enough to take on! Psychos intends to fuse with Orochi, the Monster King, which would give them immense power against Tornado. Superalloy confronts Garo and experiences fear of his opponent''s strength... Meanwhile, Saitama gets caught up in a cave-in in the Monster Association''s underground labyrinth!', N'One and Yusuke Murata', CAST(12.00 AS Decimal(18, 2)), 2, N'da823e30-7506-4703-a31c-0dde2a6b1f5c_1974742946_b.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (8, N'Haikyu!! Vol. 8', N'Shoyo Hinata is out to prove that in volleyball you don''t need to be tall to fly Ever since he saw the legendary player known as "the Little Giant" compete at the national volleyball finals, Shoyo Hinata has been aiming to be the best volleyball player ever Who says you need to be tall to play volleyball when you can jump higher than anyone else? The Inter-High match between Karasuno and Aoba Johsai continues. Karasuno has dragged the game into a third set and is struggling to keep up their momentum. In a desperate move, Coach Ukai decides to bring out Tadashi Yamaguchi as a pinch server Could this be the push Karasuno needs to keep the team''s hopes alive and beat Aoba Johsai?', N'Haruichi Furudate', CAST(12.00 AS Decimal(18, 2)), 7, N'8213f270-0a9c-4b65-8d4c-1bf2605bd885_1421590980_b.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (9, N'Persona 5, Vol. 2', N'Based on the popular video game, this manga''s phantom thieves will steal your heart After being arrested and having to transfer to a new high school in Tokyo, Akira Kurusu is given the goal of rehabilitation and awakened to a new power--the power of one''s true self, a Persona. Using his Persona and the mysterious navigation app Mementos, Akira and his friends take on the role of phantom thieves, saving people from the twisted desires of those around them. Volleyball coach Suguru Kamoshida''s evil acts drive one of Akira''s classmates to attempt suicide, so Akira and Ryuji resolve to bring him to justice But to do that, they must infiltrate his palace and steal the treasure within to change his heart With their Personas--avatars of their will to rebel--as their weapons, Akira and his friends make their way through Kamoshida''s palace. But before they can make off with the treasure, Shadow Kamoshida finds them Do Akira and the others stand any chance against Shadow Kamoshida''s true might?', N'Atlus and Hisato Murasaki', CAST(10.00 AS Decimal(18, 2)), 8, N'99213d1d-afa1-472c-b3be-ba3854742f73_1974711978_b.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (10, N'Death Note Black Edition, Vol. 3', N'Killer 2-for-1 value on hit thriller Death Note Light Yagami is an ace student with great prospects--and he''s bored out of his mind. But all that changes when he finds the Death Note, a notebook dropped by rogue Shinigami death god. Any human whose name is written in the notebook dies, and now Light has vowed to use the power of the Death Note to rid the world of evil. But when criminals begin dropping dead, the authorities send the legendary detective L to track down the killer. With L hot on his heels, will Light lose sight of his noble goal...or his life? Contains Volumes 5 and 6 of Death Note Light Yagami is an ace student with great prospects--and he''s bored out of his mind. But all that changes when he finds the Death Note, a notebook dropped by a rogue Shinigami death god. Any human whose name is written in the notebook dies, and now Light has vowed to use the power of the Death Note to rid the world of evil. Will Light''s noble goal succeed, or will the Death Note turn him into the very thing he fights against?', N'Tsugumi Ohba and Takeshi Obata', CAST(15.00 AS Decimal(18, 2)), 3, N'd0778dcd-8e6a-4c86-b782-1a8684229ac1_1421539667_b.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (11, N'Horimiya, Vol. 1', N'A sweet "aww"-inspiring tale of school life begins!! At school, Kyouko Hori is known for being smart, attractive, and popular. On the other hand, her classmate, the boring, gloomy Izumi Miyamura tends to get painted as a "loser fanboy." But when a liberally pierced and tattooed (not to mention downright gorgeous) Miyamura appears unexpectedly on the doorstep of secretly plain-Jane homebody Hori, these two similarly dissimilar teenagers discover that there are multiple sides to every story...and person!', N'Hero and Daisuke Hagiwara', CAST(13.00 AS Decimal(18, 2)), 1, N'44cbd05d-82f0-47ff-8035-b527d596cb37_0316342033_b.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (12, N'My Hero Academia, Vol. 5', N'Midoriya inherits the superpower of the world''s greatest hero, but greatness won''t come easy. What would the world be like if 80 percent of the population manifested superpowers called "Quirks"? Heroes and villains would be battling it out everywhere Being a hero would mean learning to use your power, but where would you go to study? The Hero Academy of course But what would you do if you were one of the 20 percent who were born Quirkless? The final stages of the U.A. High sports festival promise to be explosive, as Uraraka takes on Bakugo in a head-to-head match Bakugo never gives anyone a break, and the crowd holds its breath as the battle begins. The finals will push the students of Class 1-A to their limits and beyond', N'Kohei Horikoshi', CAST(10.00 AS Decimal(18, 2)), 2, N'c0ef171f-2678-4d2b-aac7-06081fe5dea4_1421587025_b.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (13, N'Berserk Deluxe Volume 1', N'Have you got the Guts? Kentaro Miura''s Berserk has outraged, horrified, and delighted manga and anime fanatics since 1989, creating an international legion of hardcore devotees and inspiring a plethora of TV series, feature films, and video games. And now the badass champion of adult fantasy manga is presented in an oversized 7" x 10" deluxe hardcover edition, nearly 700 pages amassing the first three Berserk volumes, with following volumes to come to serve up the entire series in handsome bookshelf collections. No Guts, no glory Have you got the Guts? Kentaro Miura''s Berserk has outraged, horrified, and delighted manga and anime fanatics since 1989, creating an international legion of hardcore devotees and inspiring a plethora of TV series, feature films, and video games. And now the badass champion of adult fantasy manga is presented in an oversized 7" x 10" deluxe hardcover edition, nearly 700 pages amassing the first three Berserk volumes, with following volumes to come to serve up the entire series in handsome bookshelf collections. No Guts, no glory', N'Kentaro Miura and Kentaro Miura and Jason Deangelis', CAST(50.00 AS Decimal(18, 2)), 4, N'1480a7f4-9f66-4537-aed3-83bd97b1e29f_1506711987_b.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (14, N'Demon Slayer : Kimetsu No Yaiba, Vol. 11', N'Tanjiro sets out on the path of the Demon Slayer to save his sister and avenge his family In Taisho-era Japan, kindhearted Tanjiro Kamado makes a living selling charcoal. But his peaceful life is shattered when a demon slaughters his entire family. His little sister Nezuko is the only survivor, but she has been transformed into a demon herself Tanjiro sets out on a dangerous journey to find a way to return his sister to normal and destroy the demon who ruined his life. The battle against the powerful sibling demons Gyutaro and Daki is not going well. Although finally able to fight alongside Tanjiro against the monsters, Zenitsu, Inosuke and even the Hashira Tengen Uzui may all be overwhelmed. Battling even one of Lord Muzan''s Twelve Kizuki is hard enough--can Tanjiro face two of them alone?', N'Koyoharu Gotouge', CAST(10.00 AS Decimal(18, 2)), 6, N'5e72ce40-290a-440d-b6d0-d09a831d5dcc_1974706486_b.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (15, N'Blue Period 1', N'Popular guy Yatora realizes he''s just going through the motions to make other people happy and finds himself in a new passion: painting. But untethering yourself from all your past expectations is dangerous as well as thrilling...2020 Manga Taisho Grand Prize Winner YALSA Great Graphic Novels for Teens selection Texas Library Association Maverick Graphic Novels Reading List unanimous selection STILL LIFE Yatora is the perfect high school student, with good grades and lots of friends. It''s an effortless performance, and, ultimately... a dull one. But he wanders into the art room one day, and a lone painting captures his eye, awakening him to a kind of beauty he never knew. Compelled and consumed, he dives in headfirst--and he''s about to learn how savage and unforgiving art can be...', N'Tsubasa Yamaguchi', CAST(13.00 AS Decimal(18, 2)), 7, N'e5eb3988-5ff6-444f-a5c8-daedb180a259_1646511123_b.jpg')
INSERT [dbo].[Book] ([Id], [Title], [Description], [Author], [Price], [CategoryId], [Picture]) VALUES (16, N'Toilet-Bound Hanako-Kun, Vol. 19', N'Thanks to the manipulations of those in the broadcast room, Nene and Sumire find themselves trapped once more in No. 6''s boundary. While Hanako-kun isn''t there to help them escape this time, they aren''t alone--No. 6 himself is there as well! Sumire is thrilled to be reunited with her beloved after so many years, and with No. 6 having come to terms with his feelings at long last, perhaps they have a chance to change how they left things...', N'Aidairo and Phil Christie and Alethea Nibley', CAST(13.00 AS Decimal(18, 2)), 8, N'7bdf64d9-e7a8-4ee2-b428-3fd31d57b94d_1975375831_b.jpg')
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Romance')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Science Fiction')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'Horror')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'Adventure')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'Material Arts')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (6, N'Fantasy')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (7, N'Sports')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (8, N'Mastery')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (1, 2, 1, CAST(20.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (2, 6, 2, CAST(10.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (3, 15, 1, CAST(13.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (4, 7, 1, CAST(12.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (5, 13, 2, CAST(50.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (6, 6, 1, CAST(10.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (7, 10, 4, CAST(15.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (8, 4, 1, CAST(10.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (9, 7, 1, CAST(12.00 AS Decimal(18, 2)), 6)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (10, 1, 1, CAST(17.00 AS Decimal(18, 2)), 7)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (11, 16, 2, CAST(13.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (12, 7, 1, CAST(12.00 AS Decimal(18, 2)), 9)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (13, 5, 2, CAST(10.00 AS Decimal(18, 2)), 9)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (14, 3, 5, CAST(10.00 AS Decimal(18, 2)), 10)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (15, 15, 10, CAST(13.00 AS Decimal(18, 2)), 11)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (16, 14, 3, CAST(10.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (17, 5, 2, CAST(10.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (18, 7, 4, CAST(12.00 AS Decimal(18, 2)), 12)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (19, 15, 10, CAST(13.00 AS Decimal(18, 2)), 13)
INSERT [dbo].[OrderItems] ([Id], [BookId], [Quantity], [Price], [OrderId]) VALUES (20, 13, 7, CAST(50.00 AS Decimal(18, 2)), 14)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (1, N'60bd59ac-6635-400c-b728-ca9f304e3db4', CAST(N'2023-12-05T10:16:05.8304923' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (2, N'60bd59ac-6635-400c-b728-ca9f304e3db4', CAST(N'2023-12-05T10:17:48.5605373' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (3, N'60bd59ac-6635-400c-b728-ca9f304e3db4', CAST(N'2023-12-05T10:25:55.4078816' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (4, N'60bd59ac-6635-400c-b728-ca9f304e3db4', CAST(N'2023-12-05T10:33:28.9130362' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (5, N'60bd59ac-6635-400c-b728-ca9f304e3db4', CAST(N'2023-12-05T10:50:18.8118588' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (6, N'bdabb7b2-5af8-4a74-aa21-a9c6903c6458', CAST(N'2023-12-05T10:51:53.0019268' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (7, N'bdabb7b2-5af8-4a74-aa21-a9c6903c6458', CAST(N'2023-12-05T10:59:01.8470484' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (8, N'bdabb7b2-5af8-4a74-aa21-a9c6903c6458', CAST(N'2023-12-05T20:30:38.5258551' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (9, N'bdabb7b2-5af8-4a74-aa21-a9c6903c6458', CAST(N'2023-12-05T22:10:56.9702814' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (10, N'60bd59ac-6635-400c-b728-ca9f304e3db4', CAST(N'2023-12-06T13:13:58.4882243' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (11, N'60bd59ac-6635-400c-b728-ca9f304e3db4', CAST(N'2023-12-06T13:58:55.8632306' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (12, N'bdabb7b2-5af8-4a74-aa21-a9c6903c6458', CAST(N'2023-12-15T20:43:31.6812867' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (13, N'60bd59ac-6635-400c-b728-ca9f304e3db4', CAST(N'2023-12-16T08:00:43.8622429' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (14, N'bdabb7b2-5af8-4a74-aa21-a9c6903c6458', CAST(N'2023-12-16T11:16:30.2684705' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/19/2023 8:06:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/19/2023 8:06:37 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/19/2023 8:06:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/19/2023 8:06:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/19/2023 8:06:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/19/2023 8:06:37 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/19/2023 8:06:37 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Book_CategoryId]    Script Date: 12/19/2023 8:06:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Book_CategoryId] ON [dbo].[Book]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_BookId]    Script Date: 12/19/2023 8:06:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_BookId] ON [dbo].[OrderItems]
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 12/19/2023 8:06:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category_CategoryId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Book_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Book_BookId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
USE [master]
GO
ALTER DATABASE [1670-ASM] SET  READ_WRITE 
GO
