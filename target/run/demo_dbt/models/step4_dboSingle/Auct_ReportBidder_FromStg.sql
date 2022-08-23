
  
  if object_id ('"dbo"."Auct_ReportBidder_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReportBidder_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ReportBidder_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ReportBidder_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ReportBidder_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ReportID] as int) [ReportID],
	cast([DisplayName] as nvarchar(4000)) [DisplayName] 
From stg.[Auct_ReportBidder_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ReportBidder_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ReportBidder_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ReportBidder_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ReportBidder_FromStg__dbt_tmp_temp_view"
    end


