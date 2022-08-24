
  
  if object_id ('"dbo"."Auct_WebEvents__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WebEvents__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_WebEvents__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_WebEvents__dbt_tmp"
    end


   EXEC('create view dbo.Auct_WebEvents__dbt_tmp_temp_view as
    
Select
	cast([EventID] as nvarchar(4000)) [EventID],
	cast([Latitude] as numeric(18,10)) [Latitude],
	cast([Longitude] as numeric(18,10)) [Longitude],
	cast([Address] as nvarchar(4000)) [Address],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([PostalCode] as nvarchar(4000)) [PostalCode],
	cast([SiteMapImageURL] as nvarchar(4000)) [SiteMapImageURL],
	cast([SiteMapPdfURL] as nvarchar(4000)) [SiteMapPdfURL],
	cast([GooglEMapdirectionURL] as nvarchar(4000)) [GooglEMapdirectionURL],
	cast([WeatherLocationID] as int) [WeatherLocationID],
	cast([VenueName] as nvarchar(4000)) [VenueName],
	cast([VenueStartDate] as datetime) [VenueStartDate],
	cast([VenueEndDate] as datetime) [VenueEndDate],
	cast([VenueImage] as nvarchar(4000)) [VenueImage],
	cast([VendorSiteMapPdfURL] as nvarchar(4000)) [VendorSiteMapPdfURL],
	cast([TicketPackageURL] as nvarchar(4000)) [TicketPackageURL],
	cast([EventStatusBit] as int) [EventStatusBit],
	cast([EventName] as nvarchar(4000)) [EventName],
	cast([EventURLName] as nvarchar(4000)) [EventURLName],
	cast([HotelsForHopeID] as nvarchar(4000)) [HotelsForHopeID],
	cast([VipPackagePageName] as nvarchar(4000)) [VipPackagePageName],
	cast([AuctionProject] as nvarchar(4000)) [AuctionProject],
	cast([AcceptingApplicationsBit] as int) [AcceptingApplicationsBit],
	cast([BlockLiveStreamID] as nvarchar(4000)) [BlockLiveStreamID],
	cast([LivesTageStreamID] as nvarchar(4000)) [LivesTageStreamID],
	cast([BlockLiveStreamlsembedID] as nvarchar(4000)) [BlockLiveStreamlsembedID],
	cast([LivesTageStreamlsembedID] as nvarchar(4000)) [LivesTageStreamlsembedID],
	cast([AcceptingConsignmentsMessage] as nvarchar(4000)) [AcceptingConsignmentsMessage],
	cast([CDNBaseURL] as nvarchar(4000)) [CDNBaseURL],
	cast([LivesTagePageURL] as nvarchar(4000)) [LivesTagePageURL],
	cast([ModifiedByUserName] as nvarchar(4000)) [ModifiedByUserName],
	cast([ModifiedDateTime] as datetime) [ModifiedDateTime],
	cast([License] as nvarchar(4000)) [License],
	cast([EventTypeID] as int) [EventTypeID],
	cast([MapdirectionImageURL] as nvarchar(4000)) [MapdirectionImageURL] 
From stg.[Auct_WebEvents_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_WebEvents__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_WebEvents__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_WebEvents__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_WebEvents__dbt_tmp_temp_view"
    end


