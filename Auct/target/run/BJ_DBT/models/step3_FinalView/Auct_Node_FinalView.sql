create view "stg"."Auct_Node_FinalView__dbt_tmp" as
    
Select
	[NodeID],[NodeTreeID],[Left],[Right],[ContentID] 
From stg.[Auct_Node_Incr] 
Where [dbt_valid_to] is null