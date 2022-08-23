
  
  if object_id ('"dbo"."Mer_TicketOrders_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketOrders_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_TicketOrders_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_TicketOrders_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_TicketOrders_FromStg__dbt_tmp_temp_view as
    
Select
	cast([OrderID] as uniqueidentifier) [OrderID],
	cast([Event_Name] as nvarchar(500)) [EventName],
	cast([ShippingMethod] as nvarchar(50)) [ShippingMethod],
	cast([Phone] as nvarchar(40)) [Phone],
	cast([Address] as nvarchar(256)) [Address],
	cast([Address2] as nvarchar(256)) [Address2],
	cast([City] as nvarchar(100)) [City],
	cast([State] as nvarchar(50)) [State],
	cast([Country] as nvarchar(100)) [Country],
	cast([Ticket_Type] as nvarchar(300)) [TicketType],
	cast([Ticket_Seq_ID] as nvarchar(50)) [TicketSequenceID],
	cast([Retail_Mask] as nvarchar(50)) [RetailMask],
	cast([Retail_Qualifiers] as nvarchar(75)) [RetailQualifier],
	cast([Company] as nvarchar(500)) [CompanyName],
	cast([Email] as nvarchar(320)) [Email],
	cast([Price_Code_Desc] as nvarchar(4000)) [PriceCodeDescription],
	cast([Comp_Name] as nvarchar(500)) [CompName],
	cast([Sell_Location_Name] as nvarchar(500)) [SellLocationName],
	cast([PaID] as nvarchar(20)) [Paid],
	cast([Ticket_Status] as nvarchar(100)) [TicketStatus],
	cast([Status] as nvarchar(50)) [Status],
	cast([Season_Name] as nvarchar(500)) [SeasonName],
	cast([Manifest_Name] as nvarchar(500)) [ManifestName],
	cast([Event_Name_Long] as nvarchar(500)) [EventName_Long],
	cast([FullName] as varchar(500)) [Name],
	cast([Zip] as nvarchar(50)) [PostalCode],
	cast([Price_Code] as nvarchar(20)) [PriceCode],
	cast([Full_Price] as money) [FullPrice],
	cast([Purchase_Price] as money) [PurchasePrice],
	cast([Inet_Purchase_Price] as money) [INET_PurchasePrice],
	cast([Printed_Price] as money) [PrintedPrice],
	cast([Pc_Ticket] as money) [PCTicketPrice],
	cast([Pc_Tax] as money) [PCTaxAmountDollars],
	cast([Block_full_Price] as money) [BlockFullPrice],
	cast([Block_Purchase_Price] as money) [BlockPurchasePrice],
	cast([Paid_Amount] as money) [PaidAmountDollars],
	cast([Season_ID] as int) [SeasonID],
	cast([Event_ID] as int) [EventID],
	cast([Acct_ID] as int) [AccountID],
	cast([Sell_Location_ID] as int) [SellLocationID],
	cast([Num_Seats] as int) [SeatsNumber],
	cast([Comp_Code] as int) [CompCode],
	cast([SourceID] as int) [TicketSourceID],
	cast([Event_Date] as datetime) [EventDate],
	cast([Upd_DateTime] as datetime) [UPDDateTime],
	cast([Privacy_Opt_Out_upd_DateTime] as datetime) [PrivacyOptOut_UPDDateTime] 
From stg.[Mer_TicketOrders_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_TicketOrders_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_TicketOrders_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_TicketOrders_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TicketOrders_FromStg__dbt_tmp_temp_view"
    end

