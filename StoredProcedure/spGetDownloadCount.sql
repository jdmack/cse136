USE [cse136]
GO
/****** Object:  StoredProcedure [dbo].[spGetRaceDetail]    Script Date: 09/08/2012 00:33:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGetDownloadCount]
    @game_id int
as
begin
 begin try
  begin tran
select
    download_count
from
    download_count
where 
    game_id = @game_id
      
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
