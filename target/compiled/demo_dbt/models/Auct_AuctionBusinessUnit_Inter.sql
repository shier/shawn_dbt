
Select
	CREATED Created,
	BUSINESSUNITID BusinessUnitID,
	cast(BUSINESSUNIT as nvarchar(4000)) BusinessUnit,
	cast(CITY as nvarchar(4000)) City,
	cast(STATE as nvarchar(4000)) State,
	cast(COUNTY as nvarchar(4000)) County,
	cast(BUSINESSUNITDISPLAY as nvarchar(4000)) BusinessUnitDisplay
From Auct_AuctionBusinessUnit_Raw