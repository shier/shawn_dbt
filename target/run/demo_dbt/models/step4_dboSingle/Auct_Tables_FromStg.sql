
  
  if object_id ('"dbo"."Auct_Tables_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Tables_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Tables_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Tables_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Tables_FromStg__dbt_tmp_temp_view as
    
Select
	cast([TableID] as int) [TableID],
	cast([TableName] as nvarchar(4000)) [TableName],
	cast([UsersID] as int) [UsersID],
	cast([DateCreated] as datetime) [DateCreated] 
From stg.[Auct_Tables_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Tables_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Tables_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Tables_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Tables_FromStg__dbt_tmp_temp_view"
    end

