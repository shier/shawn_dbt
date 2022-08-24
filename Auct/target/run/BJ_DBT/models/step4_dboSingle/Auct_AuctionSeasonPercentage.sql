
  
  if object_id ('"dbo"."Auct_AuctionSeasonPercentage__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionSeasonPercentage__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AuctionSeasonPercentage__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AuctionSeasonPercentage__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AuctionSeasonPercentage__dbt_tmp_temp_view as
    
Select
	cast([CurrentAuctionID] as int) [CurrentAuctionID],
	cast([AuctionID] as int) [AuctionID],
	cast([Percentage] as numeric(18,6)) [Percentage] 
From stg.[Auct_AuctionSeasonPercentage_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AuctionSeasonPercentage__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AuctionSeasonPercentage__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AuctionSeasonPercentage__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AuctionSeasonPercentage__dbt_tmp_temp_view"
    end


