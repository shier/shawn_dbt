
  
  if object_id ('"stg"."Auct_Journal_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Journal_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Journal_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Journal_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Journal_Inter__dbt_tmp_temp_view as
    
Select
	[JOURNALID] [JournalID],
	[AUCTIONID] [AuctionID],
	[PROJECTID] [ProjectID],
	[LN] [Ln],
	[ACCOUNTID] [AccountID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[TIMECREATED] [TimeCreated],
	cast([JOURNALTYPE] as nvarchar(4000)) [JournalType],
	cast([DEPOSITID] as nvarchar(4000)) [DepositID],
	[CARCONSIGNMENTID] [CarConsignmentID],
	[INVOICEID] [InvoiceID],
	[BIDDERID] [BidderID],
	[DEALERID] [DealerID],
	[VENDORID] [VendorID],
	[MEDIAID] [MediaID],
	[SPONSORID] [SponsorID],
	[VENDORSPACEID] [VendorSpaceID],
	[INVENTORYID] [InventoryID],
	cast([CONTACTNAME] as nvarchar(4000)) [ContactName],
	cast([ADDRESS] as nvarchar(4000)) [Address],
	cast([CITY] as nvarchar(4000)) [City],
	cast([STATEPROVINCE] as nvarchar(4000)) [StateProvince],
	cast([POSTALCODE] as nvarchar(4000)) [PostalCode],
	[COUNTRY] [Country],
	cast([PHONEAC] as nvarchar(4000)) [Phoneac],
	cast([PHONE] as nvarchar(4000)) [Phone],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[PAYMENTMETHOD] [PaymentMethod],
	cast([CHECKNUMBER] as nvarchar(4000)) [CheckNumber],
	cast([CREDITCARDNUMBER] as nvarchar(4000)) [CreditCardNumber],
	cast([CREDITCARDEXP] as nvarchar(4000)) [CreditCardExp],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[DATECREATED] [DateCreated],
	cast([CREATEDBY] as nvarchar(4000)) [CreatedBy],
	[DATEMODIFIED] [DateModified],
	cast([MODIFIEDBY] as nvarchar(4000)) [ModifiedBy],
	cast([SERVERCREATEDBY] as nvarchar(4000)) [ServerCreatedBy],
	cast([SERVERMODIFIEDBY] as nvarchar(4000)) [ServerModifiedBy],
	cast([STATUS] as nvarchar(4000)) [Status],
	[CREDIT] [Credit],
	[DEBIT] [Debit],
	[RN] [Rn]
From stg.[Auct_Journal_Raw]
    ');

  CREATE TABLE "stg"."Auct_Journal_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Journal_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Journal_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Journal_Inter__dbt_tmp_temp_view"
    end


