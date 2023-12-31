USE [Xplor_DB]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Areas](
	[Name] [varchar](100) NULL,
	[aliases] [varchar](100) NULL,
	[type] [varchar](100) NULL,
	[ISO_codes] [varchar](100) NULL,
	[begin_Dates] [date] NULL,
	[end_dates] [date] NULL,
	[disambiguation_comment] [varchar](300) NULL,
	[MBID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Artists]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Artists](
	[Name] [varchar](100) NULL,
	[sort_name] [varchar](100) NULL,
	[areas] [varchar](100) NULL,
	[IPI] [varchar](100) NULL,
	[ISNI] [varchar](100) NULL,
	[aliases] [varchar](100) NULL,
	[Artist_type] [varchar](100) NULL,
	[begin_dates] [date] NULL,
	[End_dates] [date] NULL,
	[disambiguation_comment] [varchar](300) NULL,
	[MBID] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genres](
	[Name] [varchar](100) NULL,
	[aliases] [varchar](100) NULL,
	[disambiguation_comment] [varchar](300) NULL,
	[MBID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Instruments]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Instruments](
	[Name] [varchar](100) NULL,
	[description] [varchar](100) NULL,
	[aliases] [varchar](100) NULL,
	[type] [varchar](100) NULL,
	[disambiguation_comment] [varchar](100) NULL,
	[MBID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Labels]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Labels](
	[Name] [varchar](100) NULL,
	[area] [varchar](100) NULL,
	[IPI] [varchar](100) NULL,
	[ISNI] [varchar](100) NULL,
	[aliases] [varchar](100) NULL,
	[type] [varchar](100) NULL,
	[code] [varchar](100) NULL,
	[begin_dates] [date] NULL,
	[end_dates] [date] NULL,
	[disambiguation_comment] [varchar](300) NULL,
	[MBID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mediums]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mediums](
	[Format] [varchar](100) NULL,
	[list_of_tracks] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Places]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Places](
	[Name] [varchar](100) NULL,
	[aliases] [varchar](100) NULL,
	[area] [varchar](100) NULL,
	[type] [varchar](100) NULL,
	[code] [varchar](100) NULL,
	[begin_Dates] [date] NULL,
	[end_Dates] [date] NULL,
	[disambiguation_comment] [varchar](300) NULL,
	[MBID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Recordings]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recordings](
	[Title] [varchar](100) NULL,
	[artist_credit] [varchar](100) NULL,
	[duration] [varchar](100) NULL,
	[ISRC] [varchar](100) NULL,
	[PUIDs] [varchar](100) NULL,
	[disambiguation_comment] [varchar](300) NULL,
	[MBID] [int] NULL,
	[recordid] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReleaseGroups]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReleaseGroups](
	[Title] [varchar](100) NULL,
	[artist_credit] [varchar](100) NULL,
	[type] [varchar](100) NULL,
	[disambiguation_comment] [varchar](300) NULL,
	[MBID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Releases]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Releases](
	[Title] [varchar](100) NULL,
	[artist_credit] [varchar](100) NULL,
	[type] [varchar](100) NULL,
	[status] [varchar](100) NULL,
	[language] [varchar](100) NULL,
	[dates] [date] NULL,
	[country] [varchar](100) NULL,
	[label] [varchar](100) NULL,
	[catalog_number] [varchar](100) NULL,
	[barcode] [varchar](100) NULL,
	[medium] [varchar](100) NULL,
	[disc_ID] [varchar](100) NULL,
	[data_ASIN] [varchar](100) NULL,
	[disambiguation_comment] [varchar](300) NULL,
	[MBID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Series]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Series](
	[Name] [varchar](100) NULL,
	[aliases] [varchar](100) NULL,
	[type] [varchar](100) NULL,
	[disambiguation_comment] [varchar](300) NULL,
	[MBID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblEvents]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblEvents](
	[Name] [varchar](100) NULL,
	[aliases] [varchar](100) NULL,
	[type] [varchar](100) NULL,
	[begin_dates] [date] NULL,
	[end_dates] [date] NULL,
	[time] [datetime] NULL,
	[setlist] [varchar](100) NULL,
	[disambiguation_comment] [varchar](300) NULL,
	[MBID] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Works]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Works](
	[Title] [varchar](100) NULL,
	[ISWC] [varchar](100) NULL,
	[disambiguation_comment] [varchar](300) NULL,
	[MBID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[PRC_GET_ARTIST]    Script Date: 06/09/2023 20:09:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PRC_GET_ARTIST 's'


CREATE PROC [dbo].[PRC_GET_ARTIST]
(
@NAME  VARCHAR(100)
)AS 
BEGIN


select name,mbid into #tmpartist from Artists  where name like '%'+@NAME+'%'

select t.name ,r.title ,e.name as 'album' from Recordings R 
Join #tmpartist T on r.mbid = t.mbid
join TblEvents E on  r.recordid = E.mbid


DROP TABLE #tmpartist
END


GO
