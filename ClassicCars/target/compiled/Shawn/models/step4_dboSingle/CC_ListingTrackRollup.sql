
Select
	cast([ListingID] as int) [ListingId],
	cast([Year] as int) [Year],
	cast([Month] as int) [Month],
	cast([Day] as int) [Day],
	cast([Views] as int) [Views],
	cast([BatchDate] as datetime) [BatchDate],
	cast([BatchID] as nvarchar(4000)) [BatchId] 
From stg.[CC_ListingTrackRollup_FinalView]