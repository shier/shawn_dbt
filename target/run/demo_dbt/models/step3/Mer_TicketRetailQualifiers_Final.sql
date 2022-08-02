
  
  if object_id ('"stg"."Mer_TicketRetailQualifiers_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketRetailQualifiers_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TicketRetailQualifiers_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TicketRetailQualifiers_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_TicketRetailQualifiers_Final__dbt_tmp_temp_view as
    
Select
	[ID],[Ticket_Source_ID],[Qualifiers_Name],[Qualifiers_Description] 
From stg.[Mer_TicketRetailQualifiers_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Mer_TicketRetailQualifiers_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TicketRetailQualifiers_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TicketRetailQualifiers_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TicketRetailQualifiers_Final__dbt_tmp_temp_view"
    end


