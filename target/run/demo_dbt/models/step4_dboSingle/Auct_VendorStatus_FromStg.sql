
  
  if object_id ('"dbo"."Auct_VendorStatus_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorStatus_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_VendorStatus_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_VendorStatus_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_VendorStatus_FromStg__dbt_tmp_temp_view as
    
Select
	cast([VendorStatusID] as int) [VendorStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_VendorStatus_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_VendorStatus_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_VendorStatus_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_VendorStatus_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_VendorStatus_FromStg__dbt_tmp_temp_view"
    end


