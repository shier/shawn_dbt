
  
  if object_id ('"stg"."Auct_Car_DM_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Car_DM_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Car_DM_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Car_DM_stg__dbt_tmp"
    end


   EXEC('create view stg.Auct_Car_DM_stg__dbt_tmp_temp_view as
    

WITH Auct_Car_stg AS (
	SELECT 
		car.[CARID],
		car.[VIN],
		car.[YEAR],
		car.[ITEMID],
		ISNULL(itemty.[NAME], ''Car'') AS [ITEMTYPE],
		NULLIF(item.[DESCR], '''') AS [ITEMDESCR],
		car.[CARMAKEID],
		car.[CARMODELID],
		car.[CARTYPEID],
		car.[CARSTYLEID],
		car.[CARTRIMID],
		car.[CARTRANSMISSIONID],
		car.[CARCONDITIONID],
		car.[ORIGINALENGINE],
		car.[EXTERIORCOLOR],
		car.[INTERIORCOLOR],
		car.[INTERIORMATERIAL],
		car.[CONDITIONDESCRIPTION],
		NULLIF(car.[NUMBERSMATCHING], '''') AS [NUMBERSMATCHING],
		car.[ORIGINALTIRES],
		car.[TIREMANUFACTURERID],
		car.[FRONTTIRESIZE],
		car.[REARTIRESIZE],
		car.[CREATED],
		car.[UPDATEEVENTID],
		car.[DRIVERSIDE],
		car.[HORSEPOWER],
		car.[AUTHENTICSTATUSID],
		car.[ENGINE],
		car.[DISPLACEMENT],
		car.[CYLINDERS],
		car.[HORSEPOWERTYPE],
		car.[POWERSTEERING],
		car.[POWERBRAKES],
		car.[AIRCONDITIONING],
		car.[OTHERFEATURE],
		car.[HASHIGHPERFORMANCE],
		car.[HIGHPERFORMANCEDOCUMENTED],
		car.[MAKE],
		NULLIF(car.[MODEL], '''') AS [MODEL],
		car.[STYLE],
		car.[EXTRADATA],
		car.[TITLEDTO],
		car.[POWERWINDOWS],
		car.[MODIFIEDBYUSERNAME],
		car.[MODIFIEDDATETIME],
		car.[MILEAGE],
		car.[CHECKINMILEAGE],
		ROW_NUMBER() OVER(
			PARTITION BY car.[ItemID]
			ORDER BY car.[ItemID], car.[Created] DESC, car.[CarID] DESC
		) AS [RowNumber]
	FROM [stg].[Auct_CAR_FinalView] car 
	LEFT JOIN [stg].[Auct_Item_FinalView] item 
		ON car.[ItemID]=item.[ItemID]
	LEFT JOIN [stg].[Auct_ItemType_FinalView] itemty 
		ON item.[ItemTypeID]=itemty.[ItemTypeID]
)

SELECT 
    HASHBYTES(''SHA2_256'', 
        CONCAT(
            COALESCE(CAST([CARID] AS VARCHAR(20)), ''''), ''|'', 
            COALESCE(CAST([ITEMID] AS VARCHAR(20)), '''')
        )
    ) AS [Item_Skey],
    [CARID] as [CarID],
    [VIN] as [VIN],
    [YEAR] as [Year],
    [ITEMID] as [ItemID],
    [ITEMTYPE] as [ItemType],
    [ITEMDESCR] as [ItemDescription],
    [CARMAKEID] as [CarMakeID],
    [CARMODELID] as [CarModelID],
    [CARTYPEID] as [CarTypeID],
    [CARSTYLEID] as [CarStyleID],
    [CARTRIMID] as [CarTrimID],
    [CARTRANSMISSIONID] as [CarTransmissionID],
    [CARCONDITIONID] as [CarConditionID],
    [ORIGINALENGINE] as [OriginalEngine],
    [EXTERIORCOLOR] as [ExteriorColor],
    [INTERIORCOLOR] as [InteriorColor],
    [INTERIORMATERIAL] as [InteriorMaterial],
    [CONDITIONDESCRIPTION] as [ConditionDescription],
    [NUMBERSMATCHING] as [NumbersMatching],
    [ORIGINALTIRES] as [OriginalTires],
    [TIREMANUFACTURERID] as [TireManufacturerID],
    [FRONTTIRESIZE] as [FrontTireSize],
    [REARTIRESIZE] as [RearTireSize],
    [CREATED] as [Created],
    [UPDATEEVENTID] as [UpdateEventID],
    [DRIVERSIDE] as [DriverSide],
    [HORSEPOWER] as [Horsepower],
    [AUTHENTICSTATUSID] as [AuthenticStatusID],
    [ENGINE] as [Engine],
    [DISPLACEMENT] as [Displacement],
    [CYLINDERS] as [Cylinders],
    [HORSEPOWERTYPE] as [HorsepowerType],
    [POWERSTEERING] as [HasPowerSteering],
    [POWERBRAKES] as [HasPowerBrakes],
    [AIRCONDITIONING] as [HasAirConditioning],
    [OTHERFEATURE] as [OtherFeature],
    [HASHIGHPERFORMANCE] as [HasHighPerformance],
    [HIGHPERFORMANCEDOCUMENTED] as [HighPerformanceDocumented],
    [MAKE] as [CarMake],
    [MODEL] as [CarModel],
    [STYLE] as [CarStyle],
    [EXTRADATA] as [ExtraData],
    [TITLEDTO] as [TitledTo],
    [POWERWINDOWS] as [HasPowerWindows],
    [MODIFIEDBYUSERNAME] as [ModifiedByUsername],
    [MODIFIEDDATETIME] as [ModifiedDate],
    [MILEAGE] as [Mileage],
    [CHECKINMILEAGE] as [CheckinMileage]
FROM Auct_Car_stg
    ');

  CREATE TABLE "stg"."Auct_Car_DM_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Car_DM_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Car_DM_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Car_DM_stg__dbt_tmp_temp_view"
    end


