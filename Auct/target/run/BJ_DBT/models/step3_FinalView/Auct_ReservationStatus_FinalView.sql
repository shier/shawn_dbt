create view "stg"."Auct_ReservationStatus_FinalView__dbt_tmp" as
    
Select
	[ReservationStatusID],[Name] 
From stg.[Auct_ReservationStatus_Incr] 
Where [dbt_valid_to] is null
