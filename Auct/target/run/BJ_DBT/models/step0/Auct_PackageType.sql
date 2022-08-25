
  
  if object_id ('"dbo"."Auct_PackageType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PackageType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PackageType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PackageType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PackageType__dbt_tmp_temp_view as
    
Select
	cast([PackageTypeID] as int) [PackageTypeID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_PackageType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PackageType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PackageType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PackageType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PackageType__dbt_tmp_temp_view"
    end

