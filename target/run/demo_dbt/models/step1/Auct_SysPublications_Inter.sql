
  
  if object_id ('"stg"."Auct_SysPublications_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysPublications_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysPublications_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysPublications_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysPublications_Inter__dbt_tmp_temp_view as
    
Select
	[pubid] [PubID],
	cast([description] as nvarchar(4000)) [Description],
	cast([name] as nvarchar(4000)) [Name],
	[repl_freq] [Repl_Freq],
	[status] [Status],
	[sync_method] [Sync_Method],
	cast([snapshot_jobid] as nvarchar(4000)) [Snapshot_JobID],
	[retention] [Retention],
	cast([alt_snapshot_folder] as nvarchar(4000)) [Alt_Snapshot_Folder],
	cast([pre_snapshot_script] as nvarchar(4000)) [Pre_Snapshot_Script],
	cast([post_snapshot_script] as nvarchar(4000)) [Post_Snapshot_Script],
	cast([ftp_address] as nvarchar(4000)) [Ftp_Address],
	[ftp_port] [Ftp_Port],
	cast([ftp_subdirectory] as nvarchar(4000)) [Ftp_SubDirectory],
	cast([ftp_login] as nvarchar(4000)) [Ftp_Login],
	cast([ftp_password] as nvarchar(4000)) [Ftp_Password],
	[conflict_retention] [Conflict_Retention],
	[conflict_policy] [Conflict_Policy],
	[queue_type] [Queue_Type],
	cast([ad_guidname] as nvarchar(4000)) [Ad_GUIDName],
	[backward_comp_level] [Backward_Comp_Level],
	cast([min_autonosync_lsn] as nvarchar(4000)) [Min_AutonoSync_lsn],
	[replicate_ddl] [Replicate_Ddl],
	[options] [Options],
	[originator_id] [Originator_ID],
	[independent_agent] [IndepEndent_Agent],
	[allow_subscription_copy] [Allow_SubScription_Copy],
	[centralized_conflicts] [Centralized_Conflicts],
	[allow_initialize_from_backup] [Allow_Initialize_From_Backup],
	[allow_sync_tran] [Allow_Sync_Tran],
	[autogen_sync_procs] [Autogen_Sync_Procs],
	[allow_queued_tran] [Allow_Queued_Tran],
	[snapshot_in_defaultfolder] [Snapshot_In_DefaultFolder],
	[compress_snapshot] [Compress_Snapshot],
	[allow_dts] [Allow_Dts],
	[immediate_sync] [Immediate_Sync],
	[enabled_for_internet] [Enabled_For_Internet],
	[allow_push] [Allow_Push],
	[allow_pull] [Allow_Pull],
	[allow_anonymous] [Allow_Anonymous],
	[immediate_sync_ready] [Immediate_Sync_Ready]
From stg.[Auct_SysPublications_Raw]
    ');

  CREATE TABLE "stg"."Auct_SysPublications_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysPublications_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysPublications_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysPublications_Inter__dbt_tmp_temp_view"
    end


