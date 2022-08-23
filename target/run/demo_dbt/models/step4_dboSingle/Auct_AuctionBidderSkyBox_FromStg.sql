
  
  if object_id ('"dbo"."Auct_AuctionBidderSkyBox_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidderSkyBox_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionBidderSkyBox_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionBidderSkyBox_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionBidderSkyBox_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SkyBoxTicketNumber] as int) [SkyBoxTicketNumber],
	cast([Active] as bit) [Active],
	cast([AuctionBidderID] as int) [AuctionbIDderID],
	cast([Created] as DATETIME) [Created],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([AuctionID] as int) [AuctionID] 
From stg.[Auct_AuctionBidderSkyBox_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionBidderSkyBox_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionBidderSkyBox_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionBidderSkyBox_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionBidderSkyBox_FromStg__dbt_tmp_temp_view"
    end

