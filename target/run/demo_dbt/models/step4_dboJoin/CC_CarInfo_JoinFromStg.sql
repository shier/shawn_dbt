
  
  if object_id ('"dbo"."CC_CarInfo_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_CarInfo_JoinFromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_CarInfo_JoinFromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_CarInfo_JoinFromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_CarInfo_JoinFromStg__dbt_tmp_temp_view as
    
SELECT
	C_L.[Year],
	C_L.[ODOMeter] [Odometer],
	C_L.[ODOMeterunitID] [OdometerUnitID],
	C_L.[VehicleTypeID] [CarTypeID],
	C_L.[Bored] [IsBored],
	C_L.[Stroked] [IsStroked],
	C_L.[Ported] [IsPorted],
	C_L.[Crank] [HasCrank],
	C_L.[TiltWheel] [HasTiltWheel],
	C_L.[FuelInjection] [HasFuelInjection],
	C_L.[SuPercharger] [HasSupercharger],
	C_L.[Blower] [HasBlower],
	C_L.[Turbo] [IsTurbo],
	C_L.[ElectronicIgnition] [HasElectronicIgnition],
	C_L.[PowerBrakes] [HasPowerBrakes],
	C_L.[PowerSteering] [HasPowerSteering],
	C_L.[Alarm] [HasAlarm],
	C_L.[PowerLocks] [HasPowerLocks],
	C_L.[PowerWindows] [HasPowerWindows],
	C_L.[PowerSeats] [HasPowerSeats],
	C_L.[Cassette] [HasCassette],
	C_L.[EightTrack] [HasEightTrack],
	C_L.[CustomStereo] [HasCustomStereo],
	C_L.[TintedWindows] [HasTintedWindows],
	C_L.[BucketSeats] [HasBucketSeats],
	C_L.[CruiseControl] [HasCruiseControl],
	C_L.[Chopped] [IsChopped],
	C_L.[SHaved] [IsShaved],
	C_L.[CdPlayer] [HasCDPlayer],
	C_L.[AirConditioning] [HasAirConditioning],
	C_L.[AmRadio] [HasAMRadio],
	C_L.[AmfmRadio] [HasAMFMRadio],
	C_L.[Convertible] [IsConvertible],
	C_L.[SunRoof] [HasSunroof],
	C_L.[TTop] [HasTTop],
	C_L.[AftermarketWheels] [HasAftermarketWheels],
	C_L.[VINylRoof] [HasVinylRoof],
	cast(C_L.[Country] as nvarchar(128)) [CountryCode],
	cast(C_L.[RestorationHistory] as nvarchar(50)) [RestorationHistory],
	cast(C_L.[ExteriorCondition] as nvarchar(50)) [ExteriorCondition],
	cast(C_L.[SeatMaterial] as nvarchar(50)) [SeatMaterial],
	cast(C_L.[EngineHistory] as nvarchar(50)) [EngineHistory],
	cast(C_L.[EngineCondition] as nvarchar(50)) [EngineCondition],
	cast(C_L.[DriveTrain] as nvarchar(50)) [DriveTrain],
	cast(C_L.[EngineSize] as nvarchar(50)) [Engine],
	cast(C_L.[StockNumber] as nvarchar(200)) [StockNumber],
	cast(C_L.[TrimLevel] as nvarchar(50)) [TrimLevel],
	cast(C_L.[VIN] as nvarchar(200)) [VIN],
	cast(C_L.[TitleStatus] as nvarchar(4000)) [TitleStatus],
	cast(C_L.[Make] as nvarchar(1000)) [CarMake],
	cast(C_L.[Model] as nvarchar(1000)) [CarModel],
	cast(C_L.[ExteriorColor] as nvarchar(50)) [ExteriorColor],
	cast(C_L.[InteriorColor] as nvarchar(50)) [InteriorColor],
	cast(C_L.[TransMission] as nvarchar(50)) [Transmission],
	cast(C_VT.[Description] as nvarchar(1000)) [CarType]
FROM [stg].[CC_Listing_FinalView] AS C_L 
JOIN [stg].[CC_VehicleType_FinalView] AS C_VT ON C_VT.[ID]=C_L.[VehicleTypeID]
    ');

  CREATE TABLE "dbo"."CC_CarInfo_JoinFromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_CarInfo_JoinFromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_CarInfo_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_CarInfo_JoinFromStg__dbt_tmp_temp_view"
    end


