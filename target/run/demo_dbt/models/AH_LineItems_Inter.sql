
  
  if object_id ('"stg"."AH_LineItems_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_LineItems_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_LineItems_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_LineItems_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_LineItems_Inter__dbt_tmp_temp_view as
    
Select
	TotalAmount TotalAmount,
	PerUnitAmount PeRunitAmount,
	cast(Description as nvarchar(4000)) Description,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Currency as nvarchar(4000)) Currency,
	cast(Status as nvarchar(4000)) Status,
	cast(Type as nvarchar(4000)) Type,
	cast(LotNumber as nvarchar(4000)) LotNumber,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	DateStamp DaTestamp,
	Taxable Taxable,
	IsArchived IsArchived,
	BuyersPremiumApplies BuyersPremiuMapplies,
	IsPayerArchived IsPayerArchived,
	Id ID,
	InvoiceId InvoiceID,
	ListingId ListingID,
	Quantity Quantity,
	OwnerId OwnerID,
	PayerId PayerID,
	RelistIteration ReListiteration,
	AuctionEventId AuctionEventID
From AH_LineItems_Raw
    ');

  CREATE TABLE "stg"."AH_LineItems_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_LineItems_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_LineItems_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_LineItems_Inter__dbt_tmp_temp_view"
    end


