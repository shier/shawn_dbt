
Select
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Description] as nvarchar(4000)) [Description],
	cast([CompanyName] as nvarchar(4000)) [CompanyName],
	cast([SrcsetandFirstURL] as nvarchar(4000)) [SrcsetAndFirstURL],
	cast([Country] as nvarchar(4000)) [Country],
	cast([StockNumber] as nvarchar(4000)) [StockNumber],
	cast([ID] as int) [Id],
	cast([ListingStatusID] as int) [ListingStatusId],
	cast([CompanyID] as int) [CompanyId],
	cast([Year] as int) [Year],
	cast([PriceTypeID] as int) [PriceTypeId],
	cast([VehicleTypeID] as int) [VehicleTypeId],
	cast([CompanyTypeID] as int) [CompanyTypeId],
	cast([ImageCount] as int) [ImageCount],
	cast([VideoCount] as int) [VideoCount],
	cast([CategoryID] as int) [CategoryId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([FeaturedUntil] as datetime) [FeaturedUntil],
	cast([FeaturedOn] as datetime) [FeaturedOn],
	cast([IsActive] as bit) [IsActive],
	cast([IsFeaturedListing] as bit) [IsFeaturedListing],
	cast([Convertible] as bit) [Convertible],
	cast([Price] as numeric(19,4)) [Price],
	cast([Latitude] as float) [Latitude],
	cast([Longitude] as float) [Longitude] 
From stg.[CC_ListingReadOnly_FinalView]