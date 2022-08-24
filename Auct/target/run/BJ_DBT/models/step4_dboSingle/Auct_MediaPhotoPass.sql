
  
  if object_id ('"dbo"."Auct_MediaPhotoPass__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaPhotoPass__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MediaPhotoPass__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MediaPhotoPass__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MediaPhotoPass__dbt_tmp_temp_view as
    
Select
	cast([MediaPhotoPassID] as int) [MediaPhotoPassID],
	cast([MediaAuctionID] as int) [MediaAuctionID],
	cast([PhotoPassNumber] as nvarchar(4000)) [PhotoPassNumber],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MediaPhotoPass_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MediaPhotoPass__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MediaPhotoPass__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MediaPhotoPass__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MediaPhotoPass__dbt_tmp_temp_view"
    end


