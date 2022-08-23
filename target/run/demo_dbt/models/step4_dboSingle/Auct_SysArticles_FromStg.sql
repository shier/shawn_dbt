
  
  if object_id ('"dbo"."Auct_SysArticles_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysArticles_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SysArticles_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SysArticles_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SysArticles_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Fire_Triggers_On_Snapshot] as bit) [Fire_triggers_on_snapshot],
	cast([ArtID] as int) [ArtID],
	cast([Creation_Script] as nvarchar(4000)) [Creation_scrIPt],
	cast([Del_Cmd] as nvarchar(4000)) [Del_cmd],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Dest_Table] as nvarchar(4000)) [Dest_Table],
	cast([Filter] as int) [Filter],
	cast([Filter_Clause] as nvarchar(4000)) [Filter_clause],
	cast([Ins_Cmd] as nvarchar(4000)) [Ins_cmd],
	cast([Name] as nvarchar(4000)) [Name],
	cast([OBJID] as int) [OBJID],
	cast([PubID] as int) [PuBid],
	cast([Pre_Creation_cmd] as int) [Pre_Creation_cmd],
	cast([Status] as int) [Status],
	cast([Sync_OBJID] as int) [Sync_oBJID],
	cast([Type] as int) [Type],
	cast([Upd_Cmd] as nvarchar(4000)) [Upd_cmd],
	cast([SchEMA_Option] as varbinary(8000)) [SchEMA_Option],
	cast([Dest_Owner] as nvarchar(4000)) [Dest_Owner],
	cast([Ins_Scripting_Proc] as int) [Ins_Scripting_proc],
	cast([Del_Scripting_Proc] as int) [Del_Scripting_proc],
	cast([Upd_Scripting_Proc] as int) [Upd_Scripting_proc],
	cast([Custom_Script] as nvarchar(4000)) [Custom_scrIPt] 
From stg.[Auct_SysArticles_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SysArticles_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SysArticles_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SysArticles_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysArticles_FromStg__dbt_tmp_temp_view"
    end


