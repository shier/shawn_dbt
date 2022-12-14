
  
  if object_id ('"dbo"."AH_ImportedUserMap__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ImportedUserMap__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ImportedUserMap__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ImportedUserMap__dbt_tmp"
    end


   EXEC('create view dbo.AH_ImportedUserMap__dbt_tmp_temp_view as
    
Select
	cast([LocalUserID] as int) [localUserId],
	cast([ForeignUserID] as int) [foreignUserId],
	cast([ImportedUserName] as nvarchar(4000)) [importedUsername] 
From stg.[AH_ImportedUserMap_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ImportedUserMap__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ImportedUserMap__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ImportedUserMap__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ImportedUserMap__dbt_tmp_temp_view"
    end


