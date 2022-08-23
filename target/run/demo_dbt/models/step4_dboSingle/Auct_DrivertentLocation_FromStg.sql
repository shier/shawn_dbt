
  
  if object_id ('"dbo"."Auct_DrivertentLocation_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DrivertentLocation_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DrivertentLocation_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DrivertentLocation_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DrivertentLocation_FromStg__dbt_tmp_temp_view as
    
Select
	cast([DrivertentLocationID] as int) [DrivertentLocationID],
	cast([DrivertentLocationName] as nvarchar(4000)) [DrivertentLocationName],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_DrivertentLocation_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DrivertentLocation_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DrivertentLocation_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DrivertentLocation_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DrivertentLocation_FromStg__dbt_tmp_temp_view"
    end

