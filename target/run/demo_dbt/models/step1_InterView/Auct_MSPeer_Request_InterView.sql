create view "stg"."Auct_MSPeer_Request_InterView__dbt_tmp" as
    
Select
	[id] [ID],
	cast([publication] as nvarchar(4000)) [Publication],
	[sent_date] [Sent_Date],
	cast([description] as nvarchar(4000)) [Description]
From stg.[Auct_MSPeer_Request_Raw]
