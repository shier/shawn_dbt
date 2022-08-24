create view "dbo_stg"."Auct_Ranges_InterView__dbt_tmp" as
    
Select
	[RANGEID] [RangeID],
	cast([RANGENAME] as nvarchar(4000)) [RangeName],
	[CONTACTTYPEID] [ContactTypeID],
	[AUCTIONID] [AuctionID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[PROJECTEDTIME] [ProjectedTime],
	[ISRESERVELOTFEE] [IsReserveLotFee],
	[RANGESTART] [RangeStart],
	[RANGEEND] [RangeEnd],
	[RANGENUMBER] [RangeNumber]
From stg.[Auct_Ranges_Raw]
