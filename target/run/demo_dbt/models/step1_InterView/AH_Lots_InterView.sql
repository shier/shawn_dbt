create view "stg"."AH_Lots_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([LotNumber] as nvarchar(4000)) [LotNumber],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[IsSoftClosing] [IsSoftclosing],
	[SoftClosingGroup] [SoftclosingGroup],
	[LotOrder] [LotOrder],
	[AuctionEventID] [AuctionEventID],
	[ClosingGroup] [ClosingGroup],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_Lots_Raw]
