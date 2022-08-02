
  
  if object_id ('"stg"."Auct_Vendor_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Vendor_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Vendor_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Vendor_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Vendor_Inter__dbt_tmp_temp_view as
    
Select
	[VENDORID] [VendorID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[VENDORSTATUSID] [VendorStatusID],
	[VENDORTYPEID] [VendorTypeID],
	[PRODUCTSERVICETYPEID] [ProductServiceTypeID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[ADDRESSID] [AddressID],
	[LEGACYVENDORID] [LegacyVendorID],
	cast([JOBTITLE] as nvarchar(4000)) [JobTitle]
From stg.[Auct_Vendor_Raw]
    ');

  CREATE TABLE "stg"."Auct_Vendor_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Vendor_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Vendor_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Vendor_Inter__dbt_tmp_temp_view"
    end


