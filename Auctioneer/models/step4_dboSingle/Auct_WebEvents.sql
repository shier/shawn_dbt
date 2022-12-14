{{ config(materialized='table',schema='dbo')}}
Select
	cast([Latitude] as numeric(18,10)) [Latitude],
	cast([Longitude] as numeric(18,10)) [Longitude],
	cast([EventID] as nvarchar(4000)) [EventID],
	cast([Address] as nvarchar(4000)) [Address],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([PostalCode] as nvarchar(4000)) [PostalCode],
	cast([SiteMapImageURL] as nvarchar(4000)) [SiteMapImageUrl],
	cast([SiteMapPdfURL] as nvarchar(4000)) [SiteMapPdfUrl],
	cast([GooglEMapdirectionURL] as nvarchar(4000)) [GoogleMapDirectionUrl],
	cast([WeatherLocationID] as int) [WeatherLocationID],
	cast([VenueName] as nvarchar(4000)) [VenueName],
	cast([VenueStartDate] as datetime) [VenueStartDate],
	cast([VenueEndDate] as datetime) [VenueEndDate],
	cast([VenueImage] as nvarchar(4000)) [VenueImage],
	cast([VendorSiteMapPdfURL] as nvarchar(4000)) [VendorSiteMapPdfUrl],
	cast([TicketPackageURL] as nvarchar(4000)) [TicketPackageURL],
	cast([EventStatusBit] as int) [EventStatusBit],
	cast([EventName] as nvarchar(4000)) [EventName],
	cast([EventURLName] as nvarchar(4000)) [EventUrlName],
	cast([HotelsForHopeID] as nvarchar(4000)) [HotelsForHopeID],
	cast([VipPackagePageName] as nvarchar(4000)) [VIPPackagePageName],
	cast([AuctionProject] as nvarchar(4000)) [AuctionProject],
	cast([AcceptingApplicationsBit] as int) [AcceptingApplicationsBit],
	cast([BlockLiveStreamID] as nvarchar(4000)) [BlockLiveStreamID],
	cast([LivesTageStreamID] as nvarchar(4000)) [LIveStageStreamID],
	cast([BlockLiveStreamlsembedID] as nvarchar(4000)) [BlockLiveStreamLSEmbedID],
	cast([LivesTageStreamlsembedID] as nvarchar(4000)) [LiveStageStreamLSEmbedID],
	cast([AcceptingConsignmentsMessage] as nvarchar(4000)) [AcceptingConsignmentsMessage],
	cast([CDNBaseURL] as nvarchar(4000)) [CDNBaseURL],
	cast([LivesTagePageURL] as nvarchar(4000)) [LiveStagePageURL],
	cast([ModifiedByUserName] as nvarchar(4000)) [ModifiedByUserName],
	cast([ModifiedDateTime] as datetime) [ModifiedDateTime],
	cast([License] as nvarchar(4000)) [License],
	cast([EventTypeID] as int) [EventTypeID],
	cast([MapdirectionImageURL] as nvarchar(4000)) [MapDirectionImageUrl] 
From stg.[Auct_WebEvents_FinalView]