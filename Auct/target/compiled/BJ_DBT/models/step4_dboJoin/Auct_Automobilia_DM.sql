
with Auct_Automobilia_Ex as (
    Select
    -- [AutomobiliaConditionID],[Description],
    [AutomobiliaID],[ItemID],[AutomobiliaTypeID],[Created],[UpdateEventID],[LotNumber],[CustomerAccountID],[AuctionID],[Comments]
    From stg.[Auct_Automobilia_FinalView] 
),
Auct_Item_Ex as(
    Select
	-- [EstimatedValue],[ItemStatusID],[ContactID],[Created],[UpdateEventID],[ItemTaxTypeID] 
    [Descr],[ItemTypeID],[ItemID]
    From stg.[Auct_Item_FinalView] 
),
Auct_ItemType_Ex as (
    Select
    -- [Created],[UpdateEventID],
	[ItemTypeID],[Name]
    From stg.[Auct_ItemType_FinalView] 
)
SELECT
   HASHBYTES('SHA2_256', 
        CONCAT(
            COALESCE(CAST(autom.[AUTOMOBILIAID] AS VARCHAR(20)), ''), '|', 
            COALESCE(CAST(autom.[ITEMID] AS VARCHAR(20)), '')
        )
    ) AS [Item_Skey],
	autom.[AUTOMOBILIAID],
	autom.[AUTOMOBILIATYPEID],
	autom.[AUTOMOBILIACONDITIONID],
	autom.[ITEMID],
	ISNULL(itemty.[NAME], 'Car') AS [ITEMTYPE],
	NULLIF(item.[DESCR], '') AS [ITEMDESCR],
	-- autom.[DESCRIPTION],
	autom.[CREATED],
	autom.[UPDATEEVENTID],
	autom.[LOTNUMBER],
	autom.[CUSTOMERACCOUNTID],
	autom.[AUCTIONID],
	autom.[COMMENTS]
FROM [Auct_AUTOMOBILIA_Ex] autom 
LEFT JOIN [Auct_Item_Ex] item 
	ON autom.[ItemID]=item.[ItemID]
LEFT JOIN [Auct_ItemType_Ex] itemty 
	ON item.[ItemTypeID]=itemty.[ItemTypeID]