
  
  if object_id ('"stg"."Auct_WebEventsArchive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WebEventsArchive_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_WebEventsArchive_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_WebEventsArchive_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_WebEventsArchive_Inter__dbt_tmp_temp_view as
    
Select
	Latitude Latitude,
	Longitude Longitude,
	cast(LIveStageStreamID as nvarchar(4000)) LivesTageStreamID,
	cast(BlockLiveStreamLSEmbedID as nvarchar(4000)) BlockLiveStreamlsembedID,
	cast(LiveStageStreamLSEmbedID as nvarchar(4000)) LivesTageStreamlsembedID,
	cast(AcceptingConsignmentsMessage as nvarchar(4000)) AcceptingConsignmentsMessage,
	cast(CDNBaseURL as nvarchar(4000)) CDNBaseURL,
	cast(ModifiedByUserName as nvarchar(4000)) ModifiedByUserName,
	cast(EventUrlName as nvarchar(4000)) EventURLName,
	cast(HotelsForHopeID as nvarchar(4000)) HotelsForHopeID,
	cast(VIPPackagePageName as nvarchar(4000)) VipPackagePageName,
	cast(LiveStagePageURL as nvarchar(4000)) LivesTagePageURL,
	cast(AuctionProject as nvarchar(4000)) AuctionProject,
	cast(BlockLiveStreamID as nvarchar(4000)) BlockLiveStreamID,
	cast(SiteMapPdfUrl as nvarchar(4000)) SiteMapPdfURL,
	cast(GoogleMapDirectionUrl as nvarchar(4000)) GooglEMapdirectionURL,
	cast(VenueName as nvarchar(4000)) VenueName,
	cast(VenueImage as nvarchar(4000)) VenueImage,
	cast(TicketPackageURL as nvarchar(4000)) TicketPackageURL,
	cast(EventName as nvarchar(4000)) EventName,
	cast(Address as nvarchar(4000)) Address,
	cast(City as nvarchar(4000)) City,
	cast(State as nvarchar(4000)) State,
	cast(PostalCode as nvarchar(4000)) PostalCode,
	cast(SiteMapImageUrl as nvarchar(4000)) SiteMapImageURL,
	cast(VendorSiteMapPdfUrl as nvarchar(4000)) VendorSiteMapPdfURL,
	cast(License as nvarchar(4000)) License,
	cast(MapDirectionImageUrl as nvarchar(4000)) MapdirectionImageURL,
	VenueStartDate VenueStartDate,
	VenueEndDate VenueEndDate,
	ModifiedDateTime ModifiedDateTime,
	EventStatusBit EventStatusBit,
	AcceptingApplicationsBit AcceptingApplicationsBit,
	WeatherLocationID WeatherLocationID,
	cast(EventArchiveID as nvarchar(4000)) EventArchiveID,
	cast(EventID as nvarchar(4000)) EventID
From Auct_WebEventsArchive_Raw
    ');

  CREATE TABLE "stg"."Auct_WebEventsArchive_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_WebEventsArchive_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_WebEventsArchive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WebEventsArchive_Inter__dbt_tmp_temp_view"
    end

