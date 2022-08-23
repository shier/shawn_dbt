
  
  if object_id ('"dbo"."AH_Invoice_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Invoice_JoinFromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Invoice_JoinFromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Invoice_JoinFromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_Invoice_JoinFromStg__dbt_tmp_temp_view as
    
SELECT
	H_I.[ID] [InvoiceID_RWXInvoices],
	cast(H_I.[Paiddttm] as datetime) [PaidDTTM],
	cast(H_I.[CreatedOn] as datetime) [Created_RWXInvoices],
	cast(H_I.[UpdatedOn] as datetime) [UpdatedDate_RWXInvoices],
	cast(H_I.[DeletedOn] as datetime) [DeletedDate_RWXInvoices],
	cast(H_I.[Createddttm] as datetime) [CreatedDTTM],
	cast(H_I.[Fulfilleddttm] as datetime) [FulfilledDTTM],
	H_I.[ShippingOptionID],
	H_I.[PayerID],
	H_I.[OwnerID] [OwnerID_RWXInvoices],
	cast(H_I.[SalesTax] as decimal(24,2)) [SalesTax],
	cast(H_I.[BuyersPremiumPercent] as numeric(24,2)) [BuyerPremiumPct],
	cast(H_I.[BuyersPremiumAmount] as decimal(24,2)) [BuyerPremiumAmount],
	cast(H_I.[ShippingAmount] as decimal(24,2)) [ShippingAmount],
	cast(H_I.[SubTotal] as decimal(24,2)) [Subtotal],
	cast(H_I.[Total] as decimal(24,2)) [Total],
	H_I.[IsPayerLocked],
	H_I.[Shipped] [HasShipped],
	H_I.[IsArchived] [IsArchived_RWXInvoices],
	cast(H_I.[Status] as nvarchar(100)) [Status_RWXInvoices],
	cast(H_I.[ShippingLastName] as nvarchar(500)) [ShippingLastName],
	cast(H_I.[BillingLastName] as nvarchar(500)) [BillingLastName],
	cast(H_I.[OwnerName] as nvarchar(200)) [OwnerName],
	cast(H_I.[Shippingdetails] as nvarchar(500)) [ShippingDetails],
	cast(H_I.[OwnerCity] as nvarchar(200)) [OwnerCity],
	cast(H_I.[OwnerStateregion] as nvarchar(200)) [OwnerStateRegion],
	cast(H_I.[OwnerzipPostal] as varchar(128)) [OwnerPostalCode],
	cast(H_I.[OwnerCountry] as nvarchar(200)) [OwnerCountry],
	cast(H_I.[ShippingFirstName] as nvarchar(500)) [ShippingFirstName],
	cast(H_I.[BillingFirstName] as nvarchar(500)) [BIllingFirstName],
	cast(H_I.[BillingCity] as nvarchar(40)) [BillingCity],
	cast(H_I.[BillingStateregion] as nvarchar(40)) [BillingState],
	cast(H_I.[BillingzipPostal] as varchar(128)) [BillingPostalCode],
	cast(H_I.[BillingCountry] as nvarchar(40)) [BillingCountry],
	cast(H_I.[OwnerStreet1] as varchar(128)) [OwnerStreet1],
	cast(H_I.[OwnerStreet2] as varchar(128)) [OwnerStreet2],
	cast(H_I.[ShippingCity] as nvarchar(100)) [ShippingCity],
	cast(H_I.[ShippingStateregion] as nvarchar(50)) [ShippingState],
	cast(H_I.[ShippingzipPostal] as varchar(128)) [ShippingPostalCode],
	cast(H_I.[ShippingCountry] as nvarchar(100)) [ShippingCountry],
	cast(H_I.[BillingStreet1] as varchar(128)) [BillingStreet1],
	cast(H_I.[BillingStreet2] as varchar(128)) [BillingStreet2],
	cast(H_I.[Comments] as nvarchar(4000)) [Comment],
	cast(H_I.[LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXInvoices],
	cast(H_I.[Currency] as nvarchar(10)) [CurrencyID],
	cast(H_I.[Type] as nvarchar(50)) [Type_RWXInvoices],
	cast(H_I.[ShippingStreet1] as varchar(128)) [ShippingStreet1],
	cast(H_I.[ShippingStreet2] as varchar(128)) [ShippingStreet2],
	H_LI.[ID] [LineItemsID],
	cast(H_LI.[Currency] as nvarchar(10)) [Currency],
	cast(H_LI.[Status] as nvarchar(100)) [Status_RWXLineItems],
	cast(H_LI.[Type] as nvarchar(50)) [Type_RWXLineItems],
	cast(H_LI.[Description] as nvarchar(4000)) [Description],
	cast(H_LI.[LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXLineItems],
	cast(H_LI.[CreatedOn] as datetime) [Created_RWXLineItems],
	cast(H_LI.[UpdatedOn] as datetime) [UpdatedDate_RWXLineItems],
	cast(H_LI.[DeletedOn] as datetime) [DeletedDate_RWXLineItems],
	cast(H_LI.[DaTestamp] as datetime) [DateStamp],
	H_LI.[InvoiceID] [InvoiceID_RWXLineItems],
	H_LI.[ListingID],
	H_LI.[Quantity] [QTY],
	H_LI.[OwnerID] [OwnerID_RWXLineItems],
	H_LI.[PayerID] [UserID],
	cast(H_LI.[TotalAmount] as decimal(24,2)) [TotalAmount],
	cast(H_LI.[PeRunitAmount] as decimal(24,2)) [PerUnitAmount],
	H_LI.[Taxable] [IsTaxable],
	H_LI.[IsArchived] [IsArchived_RWXLineItems],
	H_LI.[BuyersPremiuMapplies] [HasBuyerPremiumApplies],
	H_LI.[IsPayerArchived]
FROM [stg].[AH_Invoices_FinalView] AS H_I 
JOIN [stg].[AH_LineItems_FinalView] AS H_LI ON H_LI.[InvoiceID]=H_I.[ID]
    ');

  CREATE TABLE "dbo"."AH_Invoice_JoinFromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Invoice_JoinFromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Invoice_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Invoice_JoinFromStg__dbt_tmp_temp_view"
    end


