
  
  if object_id ('"stg"."Mer_TicketOrders_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketOrders_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TicketOrders_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TicketOrders_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_TicketOrders_Inter__dbt_tmp_temp_view as
    
Select
	cast(OrderID as nvarchar(4000)) OrderID,
	cast(EVENT_NAME as nvarchar(4000)) Event_Name,
	cast(SHIPPINGMETHOD as nvarchar(4000)) ShippingMethod,
	cast(PHONE as nvarchar(4000)) Phone,
	cast(ADDRESS as nvarchar(4000)) Address,
	cast(ADDRESS2 as nvarchar(4000)) Address2,
	cast(CITY as nvarchar(4000)) City,
	cast(STATE as nvarchar(4000)) State,
	cast(COUNTRY as nvarchar(4000)) Country,
	cast(TICKET_TYPE as nvarchar(4000)) Ticket_Type,
	cast(TICKET_SEQ_ID as nvarchar(4000)) Ticket_Seq_ID,
	cast(RETAIL_MASK as nvarchar(4000)) Retail_Mask,
	cast(RETAIL_QUALIFIERS as nvarchar(4000)) Retail_Qualifiers,
	cast(COMPANY as nvarchar(4000)) Company,
	cast(EMAIL as nvarchar(4000)) Email,
	cast(PRICE_CODE_DESC as nvarchar(4000)) Price_Code_Desc,
	cast(COMP_NAME as nvarchar(4000)) Comp_Name,
	cast(SELL_LOCATION_NAME as nvarchar(4000)) Sell_Location_Name,
	cast(PAID as nvarchar(4000)) PaID,
	cast(TICKET_STATUS as nvarchar(4000)) Ticket_Status,
	cast(STATUS as nvarchar(4000)) Status,
	cast(SEASON_NAME as nvarchar(4000)) Season_Name,
	cast(MANIFEST_NAME as nvarchar(4000)) Manifest_Name,
	cast(EVENT_NAME_LONG as nvarchar(4000)) Event_Name_Long,
	cast(FULLNAME as nvarchar(4000)) FullName,
	cast(ZIP as nvarchar(4000)) Zip,
	cast(PRICE_CODE as nvarchar(4000)) Price_Code,
	FULL_PRICE Full_Price,
	PURCHASE_PRICE Purchase_Price,
	INET_PURCHASE_PRICE Inet_Purchase_Price,
	PRINTED_PRICE Printed_Price,
	PC_TICKET Pc_Ticket,
	PC_TAX Pc_Tax,
	BLOCK_FULL_PRICE Block_full_Price,
	BLOCK_PURCHASE_PRICE Block_Purchase_Price,
	PAID_AMOUNT Paid_Amount,
	SEASON_ID Season_ID,
	EVENT_ID Event_ID,
	ACCT_ID Acct_ID,
	SELL_LOCATION_ID Sell_Location_ID,
	NUM_SEATS Num_Seats,
	COMP_CODE Comp_Code,
	SourceID SourceID,
	EVENT_DATE Event_Date,
	UPD_DATETIME Upd_DateTime,
	PRIVACY_OPT_OUT_UPD_DATETIME Privacy_Opt_Out_upd_DateTime
From Mer_TicketOrders_Raw
    ');

  CREATE TABLE "stg"."Mer_TicketOrders_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TicketOrders_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TicketOrders_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketOrders_Inter__dbt_tmp_temp_view"
    end

