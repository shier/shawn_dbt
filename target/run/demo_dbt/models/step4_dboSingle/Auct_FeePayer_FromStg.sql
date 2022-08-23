
  
  if object_id ('"dbo"."Auct_FeePayer_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeePayer_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_FeePayer_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_FeePayer_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_FeePayer_FromStg__dbt_tmp_temp_view as
    
Select
	cast([FeePayerID] as int) [FeePayerID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_FeePayer_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_FeePayer_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_FeePayer_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_FeePayer_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_FeePayer_FromStg__dbt_tmp_temp_view"
    end

