
  
  if object_id ('"stg"."Auct_CoiInfo_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CoiInfo_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CoiInfo_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CoiInfo_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_CoiInfo_Final__dbt_tmp_temp_view as
    
Select
	[CoiInfoID],[Created],[CustomerAccountID],[AuctionID],[UpdateEventID],[InsurancePhone],[InsuranceFax],[Comments],[Waivers],[Damage],[WorkersComp],[Policy],[InsuranceCompany],[InsuranceContact],[GeneralLiability],[Additionalinsured],[CorrectLimits],[AuctionDates],[AutoInsurance] 
From stg.[Auct_CoiInfo_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_CoiInfo_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CoiInfo_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CoiInfo_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CoiInfo_Final__dbt_tmp_temp_view"
    end

