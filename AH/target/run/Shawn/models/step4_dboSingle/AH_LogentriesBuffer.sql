
  
  if object_id ('"dbo"."AH_LogentriesBuffer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_LogentriesBuffer__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_LogentriesBuffer__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_LogentriesBuffer__dbt_tmp"
    end


   EXEC('create view dbo.AH_LogentriesBuffer__dbt_tmp_temp_view as
    
Select
	cast([Message] as nvarchar(4000)) [Message],
	cast([Properties] as nvarchar(4000)) [Properties],
	cast([MachineName] as nvarchar(4000)) [MachineName],
	cast([Title] as nvarchar(4000)) [Title],
	cast([FunctionalArea] as nvarchar(4000)) [FunctionalArea],
	cast([Severity] as nvarchar(4000)) [Severity],
	cast([Actor] as nvarchar(4000)) [Actor],
	cast([ExceptionClass] as nvarchar(4000)) [ExceptionClass],
	cast([Stacktrace] as nvarchar(4000)) [StackTrace],
	cast([SqlDaTestamp] as datetime) [SQLDateStamp],
	cast([EntryDaTestamp] as datetime) [EntryDateStamp],
	cast([ID] as int) [Id],
	cast([Priority] as int) [Priority],
	cast([EventID] as int) [EventID] 
From stg.[AH_LogentriesBuffer_FinalView]
    ');

  CREATE TABLE "dbo"."AH_LogentriesBuffer__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_LogentriesBuffer__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_LogentriesBuffer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_LogentriesBuffer__dbt_tmp_temp_view"
    end


