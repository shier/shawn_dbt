
  
  if object_id ('"dbo"."CC_CarInfo_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_CarInfo_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_CarInfo_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_CarInfo_DM__dbt_tmp"
    end


   EXEC('create view dbo.CC_CarInfo_DM__dbt_tmp_temp_view as
    

SELECT
	listing.[Id] AS [Car_Skey],
	NULLIF(listing.[VIN], '''') AS [VIN],
	NULLIF(listing.[Country], '''') AS [Country],
	listing.[Make] AS [CarMake],
	vehiclety.[Description] AS [CarType],
	listing.[EngineSize],
	listing.[Model] AS [CarModel],
	listing.[Year] AS [CarModelYear],
	NULLIF(listing.[ExteriorColor], '''') AS [ExteriorColor],
	NULLIF(listing.[InteriorColor], '''') AS [InteriorColor],
	listing.[Transmission],
	listing.[Odometer],
	listing.[OdometerUnitId] AS [OdometerUnitID],
	listing.[Convertible] AS [IsConvertible],
	listing.[StockNumber],
	listing.[TrimLevel],
	listing.[TitleStatus],
	listing.[Sunroof] AS [HasSunroof],
	listing.[TTop] AS [HasTTop],
	listing.[AftermarketWheels] AS [HasAftermarketWheels],
	listing.[VinylRoof] AS [HasVinylRoof],
	listing.[Chopped] AS [IsChopped],
	listing.[Shaved] AS [IsShaved],
	listing.[RestorationHistory],
	listing.[ExteriorCondition],
	listing.[SeatMaterial],
	listing.[CDPlayer] AS [HasCDPlayer],
	listing.[AirConditioning] AS [HasAirConditioning],
	listing.[AMRadio] AS [HasAMRadio],
	listing.[AMFMRadio] AS [HasAMFMRadio],
	listing.[Cassette] AS [HasCassette],
	listing.[EightTrack] AS [HasEightTrack],
	listing.[CustomStereo] AS [HasCustomStereo],
	listing.[TintedWindows] AS [HasTintedWindows],
	listing.[BucketSeats] AS [HasBucketSeats],
	listing.[CruiseControl] AS [HasCruiseControl],
	listing.[PowerBrakes] AS [HasPowerBrakes],
	listing.[PowerSteering] AS [HasPowerSteering],
	listing.[Alarm] AS [HasAlarm],
	listing.[PowerLocks] AS [HasPowerLocks],
	listing.[PowerWindows] AS [HasPowerWindows],
	listing.[PowerSeats] AS [HasPowerSeats],
	listing.[TiltWheel] AS [HasTiltWheel],
	listing.[FuelInjection] AS [HasFuelInjection],
	listing.[Supercharger] AS [HasSupercharger],
	listing.[Blower] AS [HasBlower],
	listing.[Turbo] AS [IsTurbo],
	listing.[ElectronicIgnition] AS [HasElectronicIgnition],
	listing.[Bored] AS [IsBored],
	listing.[Stroked] AS [IsStroked],
	listing.[Ported] AS [IsPorted],
	listing.[Crank] AS [HasCrank],
	listing.[EngineHistory],
	listing.[EngineCondition],
	listing.[DriveTrain],
	listing.[Description]

FROM [stg].[CC_Listing_FinalView] AS listing
LEFT JOIN [stg].[CC_VehicleType_FinalView] as vehiclety
	ON vehiclety.[Id] = listing.[VehicleTypeId]
    ');

  CREATE TABLE "dbo"."CC_CarInfo_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_CarInfo_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_CarInfo_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_CarInfo_DM__dbt_tmp_temp_view"
    end

