CREATE DATABASE dbDAW23;

USE [dbDAW23]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/15/2024 6:31:11 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_Autor]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_Autor](
	[AutorId] [int] IDENTITY(1,1) NOT NULL,
	[Prenume] [nvarchar](50) NOT NULL,
	[Nume] [nvarchar](50) NOT NULL,
	[DataNastere] [date] NOT NULL,
 CONSTRAINT [PK_N_Autor] PRIMARY KEY CLUSTERED 
(
	[AutorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_Editura]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_Editura](
	[EdituraId] [int] IDENTITY(1,1) NOT NULL,
	[Denumire] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_N_Editura] PRIMARY KEY CLUSTERED 
(
	[EdituraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_Moneda]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_Moneda](
	[MonedaId] [int] IDENTITY(1,1) NOT NULL,
	[Denumire] [varchar](50) NOT NULL,
	[Acronim] [varchar](3) NOT NULL,
 CONSTRAINT [PK_N_Moneda] PRIMARY KEY CLUSTERED 
(
	[MonedaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_Carte_Autor]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_Carte_Autor](
	[AutorId] [int] NOT NULL,
	[CarteId] [int] NOT NULL,
 CONSTRAINT [PK_R_Autor_Carte] PRIMARY KEY CLUSTERED 
(
	[AutorId] ASC,
	[CarteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_Carte_Oferta]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_Carte_Oferta](
	[CarteOfertaId] [int] NOT NULL,
	[TextPromo] [nvarchar](50) NOT NULL,
	[PretNou] [decimal](7, 2) NOT NULL,
 CONSTRAINT [PK_R_Carte_Oferta] PRIMARY KEY CLUSTERED 
(
	[CarteOfertaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[R_Editura_Manager]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[R_Editura_Manager](
	[UserId] [int] NOT NULL,
	[EdituraId] [int] NOT NULL,
 CONSTRAINT [PK_R_User_Editura] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[EdituraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Carte]    Script Date: 1/15/2024 6:31:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Carte](
	[CarteId] [int] IDENTITY(1,1) NOT NULL,
	[Titlu] [nvarchar](max) NOT NULL,
	[Pret] [decimal](7, 2) NOT NULL,
	[MonedaId] [int] NOT NULL,
	[ISBN] [varchar](13) NOT NULL,
	[AnPublicare] [smallint] NOT NULL,
	[EdituraId] [int] NOT NULL,
	[EsteFinala] [bit] NOT NULL,
 CONSTRAINT [PK_T_Carte] PRIMARY KEY CLUSTERED 
(
	[CarteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231215064643_CreateIdentitySchema', N'7.0.14')
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Administrator', N'ADMINISTRATOR', N'528db71f-6dd0-4d6c-b3c0-53738a2f516a')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'Manager', N'MANAGER', NULL)
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 1)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1, 3)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (4, 3)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (5, 3)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1, N'user@info3.ro', N'USER@INFO3.RO', N'user@info3.ro', N'USER@INFO3.RO', 1, N'AQAAAAIAAYagAAAAEAVCAhSL0PUuwEKO3oQ8Qx25NirMs3W4xB5Zpq5IPbOgEcCcjmi2RmpAcI6TjdoVlQ==', N'VDKPQLTU2QPERXJDQ2ZG5OU55PIR64OG', N'9a34f87e-49a2-4ce5-88ec-b34b8a9347fd', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (2, N'admin@info3.ro', N'ADMIN@INFO3.RO', N'admin@info3.ro', N'ADMIN@INFO3.RO', 1, N'AQAAAAIAAYagAAAAEJ1T0dJuY3uqKIXmK++dydH9i5hsxwTx8ChaKMThe8DEUXvpmcmDGEeQIBycAc/ccw==', N'IFDCYFVHARFS6HTDUYYDKB6KBLJBQEH4', N'fefd4dbe-6362-428a-ac22-70c4ed32bbcd', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (3, N'polirom@info3.ro', N'POLIROM@INFO3.RO', N'polirom@info3.ro', N'POLIROM@INFO3.RO', 1, N'AQAAAAIAAYagAAAAEJJlwRVBUMnJUzQ9gfmDM3qDtbKksfwZyrWfQ8byVAkFHPFghRvNSd2HD4cWmEoSrg==', N'3T3P4AYPIIDP77OSDHEGD4OVYLAJZCVW', N'5b4b01b2-671f-4a2c-90c5-a7516a9620b6', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (4, N'manager@didactica.ro', N'MANAGER@DIDACTICA.RO', N'manager@didactica.ro', N'MANAGER@DIDACTICA.RO', 1, N'AQAAAAIAAYagAAAAENSolPkpPMRgQIRNmEKBaoMHOJvg6zm924b76cQjwE58vf1D6hv5QECSIaaHsVXSyw==', N'F5EPIK4UCYQ57OPO3MLQSPBD7QHXMLZR', N'93d34f98-6606-4944-ba77-fc5747b4e0b6', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (5, N'manager@polirom.ro', N'MANAGER@POLIROM.RO', N'manager@polirom.ro', N'MANAGER@POLIROM.RO', 1, N'AQAAAAIAAYagAAAAENH2l2SIMYbhE+K70J9XQZO9FMlxSkkJMRlIJUOvbOa2PprPhwDLgx6/0k3ILyuEJg==', N'HDYAPHGWVTMX5XXLF6J4AJPIWPM2ZZWD', N'aa941ca2-30b7-4182-835a-afceeb276205', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (6, N'mgciuca@yahoo.com', N'MGCIUCA@YAHOO.COM', N'mgciuca@yahoo.com', N'MGCIUCA@YAHOO.COM', 1, N'AQAAAAIAAYagAAAAENWl0SWoW4HKJ6in3CzPSTx1oWZoi9EyDdpB4XQ2Ym/TRUYCLQW4mNnOJiE5BdCwkg==', N'MFCNO26O2GEMZCNHSVV5YFRWYVP5Q5JJ', N'54464fb5-f483-477e-b410-81b19fb2dbc5', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[N_Autor] ON 
GO
INSERT [dbo].[N_Autor] ([AutorId], [Prenume], [Nume], [DataNastere]) VALUES (1, N'Mihai', N'Eminescu', CAST(N'1850-01-15' AS Date))
GO
INSERT [dbo].[N_Autor] ([AutorId], [Prenume], [Nume], [DataNastere]) VALUES (2, N'Ion', N'Creangă', CAST(N'1837-03-01' AS Date))
GO
INSERT [dbo].[N_Autor] ([AutorId], [Prenume], [Nume], [DataNastere]) VALUES (4, N'Mihail', N'Sebastian', CAST(N'1920-03-04' AS Date))
GO
INSERT [dbo].[N_Autor] ([AutorId], [Prenume], [Nume], [DataNastere]) VALUES (1003, N'George', N'Calinescu', CAST(N'1899-06-19' AS Date))
GO
INSERT [dbo].[N_Autor] ([AutorId], [Prenume], [Nume], [DataNastere]) VALUES (1004, N'Gabriela', N'Gîrmacea', CAST(N'1967-01-01' AS Date))
GO
INSERT [dbo].[N_Autor] ([AutorId], [Prenume], [Nume], [DataNastere]) VALUES (1005, N'Șerban', N'Andreescu', CAST(N'1968-01-01' AS Date))
GO
SET IDENTITY_INSERT [dbo].[N_Autor] OFF
GO
SET IDENTITY_INSERT [dbo].[N_Editura] ON 
GO
INSERT [dbo].[N_Editura] ([EdituraId], [Denumire]) VALUES (1, N'Didactică și Pedagogică')
GO
INSERT [dbo].[N_Editura] ([EdituraId], [Denumire]) VALUES (2, N'Polirom')
GO
INSERT [dbo].[N_Editura] ([EdituraId], [Denumire]) VALUES (1002, N'Litera')
GO
SET IDENTITY_INSERT [dbo].[N_Editura] OFF
GO
SET IDENTITY_INSERT [dbo].[N_Moneda] ON 
GO
INSERT [dbo].[N_Moneda] ([MonedaId], [Denumire], [Acronim]) VALUES (1, N'Lei', N'RON')
GO
INSERT [dbo].[N_Moneda] ([MonedaId], [Denumire], [Acronim]) VALUES (3, N'Euro', N'EUR')
GO
INSERT [dbo].[N_Moneda] ([MonedaId], [Denumire], [Acronim]) VALUES (1002, N'US Dollar', N'USD')
GO
SET IDENTITY_INSERT [dbo].[N_Moneda] OFF
GO
INSERT [dbo].[R_Carte_Autor] ([AutorId], [CarteId]) VALUES (1, 6)
GO
INSERT [dbo].[R_Carte_Autor] ([AutorId], [CarteId]) VALUES (1, 7)
GO
INSERT [dbo].[R_Carte_Autor] ([AutorId], [CarteId]) VALUES (2, 1)
GO
INSERT [dbo].[R_Carte_Autor] ([AutorId], [CarteId]) VALUES (4, 4)
GO
INSERT [dbo].[R_Carte_Autor] ([AutorId], [CarteId]) VALUES (1003, 3)
GO
INSERT [dbo].[R_Carte_Autor] ([AutorId], [CarteId]) VALUES (1004, 5)
GO
INSERT [dbo].[R_Carte_Autor] ([AutorId], [CarteId]) VALUES (1005, 5)
GO
INSERT [dbo].[R_Carte_Oferta] ([CarteOfertaId], [TextPromo], [PretNou]) VALUES (4, N'Foarte frumoasă!', CAST(25.00 AS Decimal(7, 2)))
GO
INSERT [dbo].[R_Carte_Oferta] ([CarteOfertaId], [TextPromo], [PretNou]) VALUES (7, N'Spectaculoasă!', CAST(35.00 AS Decimal(7, 2)))
GO
INSERT [dbo].[R_Editura_Manager] ([UserId], [EdituraId]) VALUES (1, 1002)
GO
INSERT [dbo].[R_Editura_Manager] ([UserId], [EdituraId]) VALUES (4, 1)
GO
INSERT [dbo].[R_Editura_Manager] ([UserId], [EdituraId]) VALUES (5, 2)
GO
SET IDENTITY_INSERT [dbo].[T_Carte] ON 
GO
INSERT [dbo].[T_Carte] ([CarteId], [Titlu], [Pret], [MonedaId], [ISBN], [AnPublicare], [EdituraId], [EsteFinala]) VALUES (1, N'Amintiri din copilărie', CAST(30.00 AS Decimal(7, 2)), 1, N'9789975143349', 2022, 1, 0)
GO
INSERT [dbo].[T_Carte] ([CarteId], [Titlu], [Pret], [MonedaId], [ISBN], [AnPublicare], [EdituraId], [EsteFinala]) VALUES (3, N'Istoria literaturii române', CAST(40.00 AS Decimal(7, 2)), 1, N'9789975143349', 2020, 1, 1)
GO
INSERT [dbo].[T_Carte] ([CarteId], [Titlu], [Pret], [MonedaId], [ISBN], [AnPublicare], [EdituraId], [EsteFinala]) VALUES (4, N'Orașul cu salcâmi', CAST(30.00 AS Decimal(7, 2)), 1, N'9786068395395', 1960, 1, 1)
GO
INSERT [dbo].[T_Carte] ([CarteId], [Titlu], [Pret], [MonedaId], [ISBN], [AnPublicare], [EdituraId], [EsteFinala]) VALUES (5, N'Mitologie romaneasca. Antologie', CAST(38.00 AS Decimal(7, 2)), 1, N'5948495002572', 2019, 1, 1)
GO
INSERT [dbo].[T_Carte] ([CarteId], [Titlu], [Pret], [MonedaId], [ISBN], [AnPublicare], [EdituraId], [EsteFinala]) VALUES (6, N'Basme', CAST(50.00 AS Decimal(7, 2)), 1, N'6421952002036', 2016, 1, 1)
GO
INSERT [dbo].[T_Carte] ([CarteId], [Titlu], [Pret], [MonedaId], [ISBN], [AnPublicare], [EdituraId], [EsteFinala]) VALUES (7, N'Proză', CAST(40.00 AS Decimal(7, 2)), 1, N'9786063624186', 2014, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[T_Carte] OFF
GO
ALTER TABLE [dbo].[T_Carte] ADD  CONSTRAINT [DF_T_Carte_EsteFinala]  DEFAULT ((0)) FOR [EsteFinala]
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
ALTER TABLE [dbo].[R_Carte_Autor]  WITH CHECK ADD  CONSTRAINT [FK_R_Autor_Carte_N_Autor] FOREIGN KEY([AutorId])
REFERENCES [dbo].[N_Autor] ([AutorId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[R_Carte_Autor] CHECK CONSTRAINT [FK_R_Autor_Carte_N_Autor]
GO
ALTER TABLE [dbo].[R_Carte_Autor]  WITH CHECK ADD  CONSTRAINT [FK_R_Autor_Carte_T_Carte] FOREIGN KEY([CarteId])
REFERENCES [dbo].[T_Carte] ([CarteId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[R_Carte_Autor] CHECK CONSTRAINT [FK_R_Autor_Carte_T_Carte]
GO
ALTER TABLE [dbo].[R_Carte_Oferta]  WITH CHECK ADD  CONSTRAINT [FK_R_Carte_Oferta_T_Carte] FOREIGN KEY([CarteOfertaId])
REFERENCES [dbo].[T_Carte] ([CarteId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[R_Carte_Oferta] CHECK CONSTRAINT [FK_R_Carte_Oferta_T_Carte]
GO
ALTER TABLE [dbo].[R_Editura_Manager]  WITH CHECK ADD  CONSTRAINT [FK_R_User_Editura_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[R_Editura_Manager] CHECK CONSTRAINT [FK_R_User_Editura_AspNetUsers]
GO
ALTER TABLE [dbo].[R_Editura_Manager]  WITH CHECK ADD  CONSTRAINT [FK_R_User_Editura_N_Editura] FOREIGN KEY([EdituraId])
REFERENCES [dbo].[N_Editura] ([EdituraId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[R_Editura_Manager] CHECK CONSTRAINT [FK_R_User_Editura_N_Editura]
GO
ALTER TABLE [dbo].[T_Carte]  WITH CHECK ADD  CONSTRAINT [FK_T_Carte_N_Editura] FOREIGN KEY([EdituraId])
REFERENCES [dbo].[N_Editura] ([EdituraId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[T_Carte] CHECK CONSTRAINT [FK_T_Carte_N_Editura]
GO
ALTER TABLE [dbo].[T_Carte]  WITH CHECK ADD  CONSTRAINT [FK_T_Carte_N_Moneda] FOREIGN KEY([MonedaId])
REFERENCES [dbo].[N_Moneda] ([MonedaId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[T_Carte] CHECK CONSTRAINT [FK_T_Carte_N_Moneda]
GO
