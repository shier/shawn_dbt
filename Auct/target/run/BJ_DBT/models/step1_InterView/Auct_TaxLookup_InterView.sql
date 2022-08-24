create view "dbo_stg"."Auct_TaxLookup_InterView__dbt_tmp" as
    
Select
	[LOOKUPID] [LookupID],
	[TAXRATESID] [TaxRatesID],
	cast([CITY] as nvarchar(4000)) [City],
	cast([STATEPROVINCE] as nvarchar(4000)) [StateProvince],
	cast([COUNTY] as nvarchar(4000)) [County],
	[TAXTYPE] [TaxType],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[TAXLEVELID] [TaxLevelID],
	[ITEMTAXTYPEID] [ItemTaxTypeID]
From stg.[Auct_TaxLookup_Raw]
