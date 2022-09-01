
  
  if object_id ('"dbo"."Auct_Consignment_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Consignment_FT__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Consignment_FT__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Consignment_FT__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Consignment_FT__dbt_tmp_temp_view as
    
SELECT
   HASHBYTES(''SHA2_256'', 
        CONCAT(
            COALESCE(CAST(consgt.[CONSIGNMENTID] AS VARCHAR(20)), ''''), ''|'', 
            COALESCE(CAST(docket.[DOCKETID] AS VARCHAR(20)), '''')
        )
    ) AS [temp_ConsignmentID_DocketID],
    consgt.[CONSIGNMENTID],
    consgt.[AUCTIONID],
    consgt.[ITEMID],
    consgt.[CUSTOMERACCOUNTID],
    consgt.[ADDRESSID],
    consgt.[CONSIGNMENTSTATUSID],
    consgt.[LOTNUMBER],
    consgt.[RESERVETYPEID],
    consgt.[RESERVEAMOUNT],
    consgt.[SHORTDESCRIPTION],
    consgt.[LONGDESCRIPTION],
    consgt.[PHOTOSRECEIVED],
    consgt.[SHOWCASE],
    consgt.[CREATED] AS [Created_Consgt],
    consgt.[UPDATEEVENTID] AS [UpdateEventID_Consgt],
    consgt.[CARCARD],
    consgt.[TITLEIN],
    consgt.[ONSITE],
    NULLIF(consgt.[CHECKEDIN], '''') AS [CheckedIN],
    consgt.[COMPLETED],
    consgt.[CANCELED],
    consgt.[CARINFOID],
    consgt.[ONSPEED],
    consgt.[ONHAGERTY],
    consgt.[CUSTESTIMATEDVALUE],
    consgt.[ISCHARITY],
    consgt.[BJVALUE],
    consgt.[CREATEDUTC],
    consgt.[MODIFIEDUTC],
    consgt.[EMAINVENTORYID],
    consgt.[EMAEVENTID],
    consgt.[EMACCEVENTID],
    consgt.[EMASHOWEVENTID],
    consgt.[EMAMERCEVENTID],
    consgt.[EMALOTID],
    consgt.[MARKETINGDESCRIPTION],
    consgt.[AUTHORIZEDWEB],
    consgt.[AUTHORIZEDSOCIAL],
    consgt.[AUTHORIZEDMARKETING],
    consgt.[AUTHORIZEDCARLIST],
    consgt.[LOCKMARKETINGDESCRIPTION],
    consgt.[REVIEWSTATEID],
    consgt.[DISPLAYSTATUSID],
    consgt.[ASSIGNEDTOUSERID],
    consgt.[PRIORITY],
    consgt.[QUALITY],
    consgt.[REQUESTEDAUCTIONID],
    consgt.[STOCKNUMBER],
    consgt.[ISOUTTAKEVEHICLE],
    consgt.[CREATEDBYUSERID],
    consgt.[MODIFIEDBYUSERID],
    consgt.[MODIFIEDDATETIME],
    NULLIF(consgt.[MODIFIEDFIELDS], '''') AS [ModifiedFields],
    consgt.[CONSIGNMENTCOMPLETESTATUSBIT],
    consgt.[MODIFIEDDETAILSUTC],
    consgt.[MODIFIEDDOCKETUTC],
    consgt.[PAYMENTSTATUS],
    consgt.[PAYMENTSTATUSBIT],
    consgt.[ONLINEAUCTONITEMID],
    consgt.[ONLINEAUCTIONAUCTIONITEMID],
    consgt.[RELEASEDFORTRANSPORT],
    consgt.[CONSIGNMENTNOTIFYBIT],
    docket.[DOCKETID],
    CASE WHEN docket.[DOCKETID] IS NOT NULL AND consgt.[LOTNUMBER]>0
        THEN ''1''
    ELSE ''0''
    END AS [HasValidDocketIDAndLotNumber],
    -- docket.[CONSIGNMENTID],
    docket.[LOTSTATUS],
    docket.[TARGETTIME],
    docket.[ACTUALTIME],
    docket.[CREATED] AS [Created_Docket],
    docket.[UPDATEEVENTID] AS [UpdateEventID_Docket],
    docket.[LANENUMBER]
FROM [stg].[Auct_Consignment_FinalView] consgt
LEFT JOIN [stg].[Auct_Docket_FinalView] docket
    ON consgt.[CONSIGNMENTID]=docket.[CONSIGNMENTID]
    ');

  CREATE TABLE "dbo"."Auct_Consignment_FT__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Consignment_FT__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Consignment_FT__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Consignment_FT__dbt_tmp_temp_view"
    end

