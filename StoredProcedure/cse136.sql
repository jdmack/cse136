USE [master]
GO
/****** Object:  Database [cse136]    Script Date: 09/06/2012 18:08:20 ******/
CREATE DATABASE [cse136] ON  PRIMARY 
( NAME = N'cse132a', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\cse132a.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cse132a_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\cse132a_log.ldf' , SIZE = 26816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cse136] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cse136].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cse136] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [cse136] SET ANSI_NULLS OFF
GO
ALTER DATABASE [cse136] SET ANSI_PADDING OFF
GO
ALTER DATABASE [cse136] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [cse136] SET ARITHABORT OFF
GO
ALTER DATABASE [cse136] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [cse136] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [cse136] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [cse136] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [cse136] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [cse136] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [cse136] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [cse136] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [cse136] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [cse136] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [cse136] SET  DISABLE_BROKER
GO
ALTER DATABASE [cse136] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [cse136] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [cse136] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [cse136] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [cse136] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [cse136] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [cse136] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [cse136] SET  READ_WRITE
GO
ALTER DATABASE [cse136] SET RECOVERY FULL
GO
ALTER DATABASE [cse136] SET  MULTI_USER
GO
ALTER DATABASE [cse136] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [cse136] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'cse136', N'ON'
GO
USE [cse136]
GO
/****** Object:  User [user1]    Script Date: 09/06/2012 18:08:20 ******/
CREATE USER [user1] FOR LOGIN [user1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[map]    Script Date: 09/06/2012 18:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[map](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[spawns] [int] NOT NULL,
	[size] [varchar](50) NOT NULL,
 CONSTRAINT [PK_map] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[log]    Script Date: 09/06/2012 18:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[log] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[league]    Script Date: 09/06/2012 18:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[league](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_league] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[race]    Script Date: 09/06/2012 18:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[race](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[code] [char](1) NOT NULL,
 CONSTRAINT [PK_race] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[player]    Script Date: 09/06/2012 18:08:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[player](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[code] [int] NOT NULL,
	[race] [int] NOT NULL,
	[league] [int] NOT NULL,
 CONSTRAINT [PK_player] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spDeleteMapInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteMapInfo]
 @map_id  int
as
begin
 begin try
  begin tran
   delete from map
    where
    id = @map_id
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to delete a map.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spDeleteLeagueInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteLeagueInfo]
 @league_id  int
as
begin
 begin try
  begin tran
   DELETE FROM league
   WHERE 
    id = @league_id
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to delete a league.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spDeleteRaceInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteRaceInfo]
    @race_id int
as
begin
 begin try
  begin tran
    delete from race
    where
        id = @race_id
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to delete race.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spUpdateMapInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateMapInfo]
 @name varchar(20),
 @map_id int,
 @spawns int,
 @size varchar(50)
as
begin
 begin try
  begin tran
   update map
    set 
        name = @name,
        spawns = @spawns,
        size = @size
    where
        id = @map_id
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to update race.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spUpdateLeagueInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateLeagueInfo]
 @league_name varchar(50),
 @league_id  int
as
begin
 begin try
  begin tran
   UPDATE league
   SET
    name = @league_name
   WHERE
    id = @league_id
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to update a league.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertMapInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:  <Author,,Name>
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertMapInfo]
 @map_name varchar(50),
 @spawns  int,
 @size  varchar(50)
as
begin
  --begin tran
   insert map
   (
    name,
    spawns,
    size
   )
   select
    @map_name,
    @spawns,
    @size
--  commit

select @@IDENTITY
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertLog]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:  <Author,,Name>
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertLog]
 @log varchar(100)
 as
begin
 insert log
 (
   log
 )
 select
  @log
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertLeagueInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:  <Author,,Name>
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertLeagueInfo]
 @league_name varchar(50)
as
begin
 begin try
  begin tran
   insert league
   (
    name
   )
   select
    @league_name
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to create a league.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
select @@IDENTITY
end
GO
/****** Object:  StoredProcedure [dbo].[spGetMapList]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetMapList]
as
begin
 begin try
  begin tran
select
    id,
    name,
    spawns,
    size
from
    map
order by name desc
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spGetMapDetail]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetMapDetail]
    @map_id int
as
begin
 begin try
  begin tran
select
    name,
    spawns,
    size
from
    map
where 
    id = @map_id
order by name desc
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spGetLeagueList]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetLeagueList]
as
begin
 begin try
  begin tran
select
    id,
    name
from
    league
order by name desc
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spGetLeagueDetail]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetLeagueDetail]
	@league_id int
as
begin
 begin try
  begin tran
select
    id,
    name
from
    league
where
	id = @league_id
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spGetRaceList]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetRaceList]
as
begin
 begin try
  begin tran
select
    id,
    name,
    code
from
    race
order by name desc
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spGetRaceDetail]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetRaceDetail]
    @race_id int
as
begin
 begin try
  begin tran
select
    name,
    code
from
    race
where 
    id = @race_id
order by name desc
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertRaceInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertRaceInfo]
 @name varchar(50),
 @code char(1)

as
begin
 begin try
  begin tran
   insert race
   (
    name,
    code
   )
   select
    @name,
    @code
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to create race.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
 select @@IDENTITY
end
GO
/****** Object:  StoredProcedure [dbo].[spUpdateRaceInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateRaceInfo]
 @name varchar(20),
 @race_id int,
 @code char(1)
as
begin
 begin try
  begin tran
   update race
    set 
        name = @name,
        code = @code
    where
        id = @race_id
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to update race.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spUpdatePlayerInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdatePlayerInfo]
 @player_name varchar(50),
 @player_code  int,
 @player_race int,
 @player_league int,
 @player_id int
as
begin
 begin try
  begin tran
   UPDATE player
   SET
    name = @player_name,
    code = @player_code,
    race = @player_race,
    league = @player_league
   WHERE
    id = @player_id 
      commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to update a player.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertPlayerInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:  <Author,,Name>
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertPlayerInfo]
 @player_name varchar(50),
 @player_code  int,
 @player_race int,
 @player_league int
as
begin

   insert player
   (
    name,
    code,
    race,
    league
   )
   select
    @player_name,
    @player_code,
    @player_race,
    @player_league
end
select @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[spGetPlayerList]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetPlayerList]
as
begin
 begin try
  begin tran
select
    id,
    name,
    code,
    race,
    league
from
    player
order by name desc
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spGetPlayerDetail]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetPlayerDetail]
	@player_id int
as
begin
 begin try
  begin tran
select
    id,
    name,
    code,
    race,
    league
from
    player
where
	id = @player_id
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  Table [dbo].[game]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[game](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[matchup] [varchar](50) NOT NULL,
	[time] [datetime] NOT NULL,
	[length] [varchar](50) NOT NULL,
	[player1] [int] NOT NULL,
	[player2] [int] NOT NULL,
	[winner] [varchar](50) NOT NULL,
	[map] [int] NOT NULL,
	[player1_race] [int] NOT NULL,
	[player2_race] [int] NOT NULL,
	[name] [varchar](100) NULL,
 CONSTRAINT [PK_game] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spDeletePlayerInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeletePlayerInfo]
 @player_id int
as
begin
   DELETE FROM player
   where
    id = @player_id
end
GO
/****** Object:  StoredProcedure [dbo].[dba_fix_race_key]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dba_fix_race_key]
as
begin
	-- declare variables
	declare	@player_race char(10)
			

	declare	@player_id		int
			
	declare curs1 cursor
	for
	select
		id,
		race
	from
		player
		
	open curs1

	fetch next from curs1 into @player_id, @player_race
	while (@@FETCH_STATUS = 0)
	begin
		
		if(@player_race = 'P')
			update player set race = 1 where id = @player_id
		
		if(@player_race = 'T')
			update player set race = 2 where id = @player_id
	
		if(@player_race = 'Z')
			update player set race = 2 where id = @player_id		
		
		fetch next from curs1 into @player_id, @player_race
	end
	
	-- close the cursor
	close curs1
	deallocate curs1
	
	select * from player
	
end
GO
/****** Object:  Table [dbo].[download_count]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[download_count](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[game_id] [int] NOT NULL,
	[download_count] [nchar](10) NULL,
 CONSTRAINT [PK_download_count] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[dba_set_game_name]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[dba_set_game_name]
as
begin
	-- declare variables
	declare	@player1_id		int,
			@player1_name	varchar(50),
			@player2_id		int,
			@player2_name	varchar(50),
			@map_id			int,
			@map_name		varchar(50)
			

	declare	@game_id		int
			
	declare curs1 cursor
	for
	select
		id,
		player1,
		player2,
		map
	from
		game
		
	open curs1

	fetch next from curs1 into @game_id, @player1_id, @player2_id, @map_id
	while (@@FETCH_STATUS = 0)
	begin
		
		select @player1_name = player.name from player where player.id = @player1_id
		select @player2_name = player.name from player where player.id = @player2_id
		select @map_name = map.name from map where map.id = @map_id
		
		update game
		set game.name = @player1_name + ' vs ' + @player2_name + ' - ' + @map_name
		where game.id = @game_id
		
		fetch next from curs1 into @game_id, @player1_id, @player2_id, @map_id
	end
	
	-- close the cursor
	close curs1
	deallocate curs1
	
	select * from game
	
end
GO
/****** Object:  StoredProcedure [dbo].[cpInsertGameInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cpInsertGameInfo]
 @matchup char(3),
 @time  datetime,
 @length  time(7),
 @player1 int, --takes player id
 @player1_race char(1),
 @player2 int,
 @player2_race char(1),
 @winner int, --takes player name
 @map  int, --map_id
 @game_id int
as
begin
 begin try
  begin tran
   UPDATE game
   SET
    matchup = @matchup,
    time = @time,
    length = @length,
    player1 = @player1,
    player1_race = @player1_race,
    player2 = @player2,
    player2_race = @player2_race,
    winner = @winner,
    map = @map
   WHERE
    id = @game_id 
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to update a game id.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spDeleteGameInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteGameInfo]
 @game_id int
as
begin
 begin try
  begin tran
   DELETE FROM game
   WHERE
    id = @game_id 
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to delete a game id.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spGetGameList]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetGameList]
as
begin
 begin try
  begin tran
select
    id,
    matchup,
    time,
    length,
    player1,
    player2,
    winner,
    map,
    player1_race,
    player2_race,
    name
from
    game
order by time desc
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spGetGameDetail]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetGameDetail]
	@game_id int
as
begin
 begin try
  begin tran
select
    id,
    matchup,
    time,
    length,
    player1,
    player2,
    winner,
    map,
    player1_race,
    player2_race,
    name
from
    game
where
	id = @game_id
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertGameInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:  <Author,,Name>
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertGameInfo]
 @matchup char(3),
 @time  datetime,
 @length  varchar(50),
 @player1 int, --takes player id
 @player1_race int,
 @player2 int,
 @player2_race int,
 @winner int, --takes player name
 @map  int
as
begin
 begin try
  begin tran

   insert game
   (
    matchup,
    time,
    length,
    player1,
    player1_race,
    player2,
    player2_race,
    winner,
    map
   )
   select
    @matchup,
    @time,
    @length,
    @player1,
    @player1_race,
    @player2,
    @player2_race,
    @winner,
    @map
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to create a game id.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
 
 select @@IDENTITY
end
GO
/****** Object:  StoredProcedure [dbo].[spUpdateGameInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateGameInfo]
 @matchup char(3),
 @time  date,
 @length  varchar(50),
 @player1 int, --takes player id
 @player1_race int,
 @player2 int,
 @player2_race int,
 @winner int, --takes player name
 @map  int,
 @game_id int
as
begin
 begin try
  begin tran
   UPDATE game
   SET
    matchup = @matchup,
    time = @time,
    length = @length,
    player1 = @player1,
    player1_race = @player1_race,
    player2 = @player2,
    player2_race = @player2_race,
    winner = @winner,
    map = @map
   WHERE
    id = @game_id 
      commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to update a game.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  Table [dbo].[stat]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[player] [int] NOT NULL,
	[game] [int] NOT NULL,
	[apm] [int] NOT NULL,
	[resources] [int] NOT NULL,
	[units] [int] NOT NULL,
	[structures] [int] NOT NULL,
 CONSTRAINT [PK_stat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateStatisticInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateStatisticInfo]
 @player_id  int,
 @game_id  int,
 @apm  int,
 @resources int,
 @units  int,
 @structures int,
 @stat_id  int
as
begin
 begin try
  begin tran
   update stat
    set
        player = @player_id,
        game = @game_id,
        apm = @apm,
        resources = @resources,
        units = @units,
        structures = @structures
    where
        id = @stat_id
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to update stat.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spInsertStatisticInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:  <Author,,Name>
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertStatisticInfo]
 @player_id int,
 @game_id  int,
 @apm  int,
 @resources int,
 @units  int,
 @structures int
as
begin
 begin try
  begin tran
   insert stat
   (
    player,
    game,
    apm,
    resources,
    units,
    structures
   )
   select
    @player_id,
    @game_id,
    @apm,
    @resources,
    @units,
    @structures
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to create stat.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
 select @@IDENTITY
end
GO
/****** Object:  StoredProcedure [dbo].[spGetStatisticList]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetStatisticList]
as
begin
 begin try
  begin tran
select
    id,
    player,
    game,
    apm,
    resources,
    units,
    structures
from
    stat
order by id desc
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spGetStatisticDetail]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetStatisticDetail]
    @stat_id int
as
begin
 begin try
  begin tran
select
    player,
    game,
    apm,
    resources,
    units,
    structures
from
    stat
where 
    id = @stat_id
order by game desc
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spDeleteStatisticInfo]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteStatisticInfo]
    @stat_id int
as
begin
 begin try
  begin tran
    delete from stat
    where
        id = @stat_id
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to delete stat.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[spBrowseGames]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBrowseGames]
as
begin
 begin try
  begin tran
select
	p1.name as player1_name,
	p1.race as player1_race,
	p1.code as player1_code,
	l1.name as player1_league,
	p2.name as player2_name,
	p2.race as player2_race,
	p2.code as player2_code,
	l2.name as player2_league,
	map.name as map_name,
	map.spawns as map_spawns,
	map.size as map_size,
	game.matchup as game_matchup,
	game.time as game_time,
	game.length as game_length,
	winner.name as game_winner,
	s1.apm as player1_apm,
	s1.resources as player1_resources,
	s1.units as player1_units,
	s1.structures as player1_structures,
	s2.apm as player2_apm,
	s2.resources as player2_resources,
	s2.units as player2_units,
	s2.structures as player2_structures
from
	player p1,
	player p2,
	player winner,
	league l1,
	league l2,
	map,
	game,
	stat s1,
	stat s2
where 
	game.map = map.id and
	game.player1 = p1.id and
	game.player2 = p2.id and
	p1.league = l1.id and
	p2.league = l2.id and
	s1.game = game.id and
	s1.player = game.player1 and
	s2.game = game.id and
	s2.player = game.player2 and
	winner.id = game.winner
order by game_time desc

  
  
   commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to select', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  StoredProcedure [dbo].[dba_parse_flat_table]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:  <Spencer Ochs, James Mack, Jun Abbott>
-- Create date: <7/18/2012>
-- Description: <Blah blah blah>
-- =============================================
CREATE PROCEDURE [dbo].[dba_parse_flat_table]
as
begin
 delete from stat
 delete from game
 delete from map
 delete from player
 delete from league
 update next_id set next_id_value='1'
 --[dba_parse_flat_table]



 -- declare variables
 declare @player1_id int,
  @player1_name varchar(50),
  @player1_race char(1),
  @player1_code int,
  @player1_league varchar(50),
  @player1_apm int,
  @player1_resources int,
  @player1_units int,
  @player1_structures int,
  @player2_id int,
  @player2_name varchar(50),
  @player2_race char(1),
  @player2_code int,
  @player2_league varchar(50),
  @player2_apm int,
  @player2_resources int,
  @player2_units int,
  @player2_structures int,
  @map_name varchar(50),
  @map_spawns int,
  @map_size varchar(50),
  @game_matchup char(3),
  @game_time datetime,
  @game_length time(7),
  @game_winner varchar(50)
 declare @map_id int,
   @game_id	 int,
   @stat_id int,
   @player1_league_id int,
   @player2_league_id int,
   @winner_id int

  
 -- create a cursor to loop through each row in the flat table
 -- for each row, we need to insert data to player, map, game, stat tables
 -- if they don't already exist
 
 declare curs1 cursor
 for
 select
  player1_name,
  player1_race,
  player1_code,
  player1_league,
  player1_apm,
  player1_resources,
  player1_units,
  player1_structures,
  player2_name,
  player2_race,
  player2_code,
  player2_league,
  player2_apm,
  player2_resources,
  player2_units,
  player2_structures,
  map_name,
  map_spawns,
  map_size,
  game_matchup,
  game_time,
  game_length,
  game_winner 
 from
  flat_table$
  
 open curs1
 fetch next from curs1 into @player1_name, @player1_race, @player1_code, @player1_league, @player1_apm, @player1_resources, @player1_units, @player1_structures, @player2_name, @player2_race, @player2_code, @player2_league, @player2_apm, @player2_resources, @player2_units, @player2_structures, @map_name, @map_spawns, @map_size, @game_matchup, @game_time, @game_length, @game_winner
 while (@@FETCH_STATUS = 0)
 begin

 -- insert league it doesn't already exist
  select
   @player1_league_id =  null
   
  select
   @player1_league_id =  id
  from
   league
  where
   name = @player1_league
   
  if (@player1_league_id is null)
  begin
   print 'creating league and league_id'
   --return @league_id for use in player
   exec cse132a_ins_league @player1_league, @player1_league_id output
  end
  
   -- insert league it doesn't already exist
  select
   @player2_league_id =  null
   
  select
   @player2_league_id =  id
  from
   league
  where
   name = @player2_league
   
  if (@player2_league_id is null)
  begin
   print 'creating league and league_id'
   --return @league_id for use in player
   exec cse132a_ins_league @player2_league, @player2_league_id output
  end

  -- insert map it doesn't already exist
  select
   @map_id =  null
   
  select
   @map_id =  id
  from
   map
  where
   name = @map_name
  and spawns  = @map_spawns
  and size  = @map_size
  if (@map_id is null)
  begin
   print 'creating map and map_id'
   --return @map_id for use in game and stat
   exec cse132a_ins_map @map_name, @map_spawns, @map_size, @map_id output
  end
   
-- insert player1 if it doesn't already exist
  select
   @player1_id =  null
   
  select
   @player1_id =  id
  from
   player
  where
   name = @player1_name
  and code  = @player1_code

  if (@player1_id is null)
  begin
   print 'creating player and player id for player 1'
   --return @player_id for use in game and stat table
   exec cse132a_ins_player @player1_name, @player1_code, @player1_race, @player1_league_id, @player1_id output
  end
  -- [dba_parse_flat_table]
 
  -- insert player2 if it doesn't already exist
  select
   @player2_id =  null
   
  select
   @player2_id =  id
  from
   player
  where
   name = @player2_name
  and code  = @player2_code  
  
  if (@player2_id is null)
  begin
   print 'creating player and player id for player 2'
   --return @player_id for use in game and stat table
   exec cse132a_ins_player @player2_name, @player2_code, @player2_race, @player2_league_id, @player2_id output
  end


  -- insert game if it doesn't already exists, need game_id later for stat table
  select
   @game_id = null
   
   select
	@winner_id = id
	from 
	 player
	where
	 name = @game_winner 
   
  select
   @game_id = id
  from
   game
  where
   matchup  = @game_matchup
  and time  = @game_time
  and length  = @game_length
  and player1  = @player1_id
  and player1_race = @player1_race
  and player2  = @player2_id
  and player2_race = @player2_race
  and winner  = @winner_id
  and  map  = @map_id
  if (@game_id is null)
  begin
   exec cse132a_ins_game @game_matchup, @game_time, @game_length, @player1_id, @player1_race, @player2_id, @player2_race, @winner_id, @map_id, @game_id output
  end
  
  -- insert stat for player1, game_id = x, if it doesn't already exist
  select
   @stat_id = null
   
  select
   @stat_id = id
  from
   stat
  where
   player  = @player1_id
  and game  = @game_id --int
  and apm  = @player1_apm
  and resources = @player1_resources
  and units  = @player1_units
  and  structures = @player1_structures
  if (@stat_id is null)
  begin
   print 'creating stat and stat_id for player1 gameX'
   exec cse132a_ins_stat @player1_id, @game_id, @player1_apm, @player1_resources, @player1_units, @player1_structures, @stat_id output
  end

  -- insert stat for player2 game_id = x if it doesn't already exist
  select
   @stat_id = null
   
  select
   @stat_id = id
  from
   stat
  where
   player  = @player2_id
  and game  = @game_id
  and apm  = @player2_apm
  and resources = @player2_resources
  and units  = @player2_units
  and  structures = @player2_structures
  if (@stat_id is null)
  begin
   print 'creating stat and stat_id'
   exec cse132a_ins_stat @player2_id, @game_id, @player2_apm, @player2_resources, @player2_units, @player2_structures, @stat_id output
  end

  fetch next from curs1 into @player1_name, @player1_race, @player1_code, @player1_league, @player1_apm, @player1_resources, @player1_units, @player1_structures, @player2_name, @player2_race, @player2_code, @player2_league, @player2_apm, @player2_resources, @player2_units, @player2_structures, @map_name, @map_spawns, @map_size, @game_matchup, @game_time, @game_length, @game_winner

end --while loop
 
 -- close the cursor
 close curs1
 deallocate curs1
 
 select * from player
 select * from map
 select * from game
 select * from stat
 select * from league
 
end --parse procedure
GO
/****** Object:  StoredProcedure [dbo].[cse132a_increment_download_count]    Script Date: 09/06/2012 18:08:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
create PROCEDURE [dbo].[cse132a_increment_download_count]
 @game_id int
as
begin
declare @download_count_id int
 begin try
  begin tran
   select @download_count_id = id from download_count where game_id = @game_id
  update download_count set download_count = download_count + 1 where id = @download_count_id
  commit
 end try
 begin catch
  IF (@@TRANCOUNT > 0)
   rollback
   RAISERROR ('Error while trying to increment download count.', -- Message text.
     	16, -- Severity.
     	1 -- State.
     	);
  
 end catch
end
GO
/****** Object:  ForeignKey [FK_player_league]    Script Date: 09/06/2012 18:08:21 ******/
ALTER TABLE [dbo].[player]  WITH CHECK ADD  CONSTRAINT [FK_player_league] FOREIGN KEY([league])
REFERENCES [dbo].[league] ([id])
GO
ALTER TABLE [dbo].[player] CHECK CONSTRAINT [FK_player_league]
GO
/****** Object:  ForeignKey [FK_player_race]    Script Date: 09/06/2012 18:08:21 ******/
ALTER TABLE [dbo].[player]  WITH CHECK ADD  CONSTRAINT [FK_player_race] FOREIGN KEY([race])
REFERENCES [dbo].[race] ([id])
GO
ALTER TABLE [dbo].[player] CHECK CONSTRAINT [FK_player_race]
GO
/****** Object:  ForeignKey [FK_game_map]    Script Date: 09/06/2012 18:08:24 ******/
ALTER TABLE [dbo].[game]  WITH CHECK ADD  CONSTRAINT [FK_game_map] FOREIGN KEY([map])
REFERENCES [dbo].[map] ([id])
GO
ALTER TABLE [dbo].[game] CHECK CONSTRAINT [FK_game_map]
GO
/****** Object:  ForeignKey [FK_game_player]    Script Date: 09/06/2012 18:08:24 ******/
ALTER TABLE [dbo].[game]  WITH CHECK ADD  CONSTRAINT [FK_game_player] FOREIGN KEY([player1])
REFERENCES [dbo].[player] ([id])
GO
ALTER TABLE [dbo].[game] CHECK CONSTRAINT [FK_game_player]
GO
/****** Object:  ForeignKey [FK_game_player1]    Script Date: 09/06/2012 18:08:24 ******/
ALTER TABLE [dbo].[game]  WITH CHECK ADD  CONSTRAINT [FK_game_player1] FOREIGN KEY([player2])
REFERENCES [dbo].[player] ([id])
GO
ALTER TABLE [dbo].[game] CHECK CONSTRAINT [FK_game_player1]
GO
/****** Object:  ForeignKey [FK_download_count_game]    Script Date: 09/06/2012 18:08:24 ******/
ALTER TABLE [dbo].[download_count]  WITH CHECK ADD  CONSTRAINT [FK_download_count_game] FOREIGN KEY([game_id])
REFERENCES [dbo].[game] ([id])
GO
ALTER TABLE [dbo].[download_count] CHECK CONSTRAINT [FK_download_count_game]
GO
/****** Object:  ForeignKey [FK_stat_game]    Script Date: 09/06/2012 18:08:24 ******/
ALTER TABLE [dbo].[stat]  WITH CHECK ADD  CONSTRAINT [FK_stat_game] FOREIGN KEY([game])
REFERENCES [dbo].[game] ([id])
GO
ALTER TABLE [dbo].[stat] CHECK CONSTRAINT [FK_stat_game]
GO
