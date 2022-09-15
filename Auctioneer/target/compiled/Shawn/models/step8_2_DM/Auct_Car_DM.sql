

SELECT 
	[Item_Skey],
	[CarID],
	[VIN],
	[Year],
	[ItemID],
	[ItemType],
	[ItemDescription],
	[CarMakeID],
	[CarModelID],
	[CarTypeID],
	[CarStyleID],
	[CarTrimID],
	[CarTransmissionID],
	[CarConditionID],
	[OriginalEngine],
	[ExteriorColor],
	[InteriorColor],
	[InteriorMaterial],
	[ConditionDescription],
	[NumbersMatching],
	[OriginalTires],
	[TireManufacturerID],
	[FrontTireSize],
	[RearTireSize],
	[Created],
	[UpdateEventID],
	[DriverSide],
	[Horsepower],
	[AuthenticStatusID],
	[Engine],
	[Displacement],
	[Cylinders],
	[HorsepowerType],
	[HasPowerSteering],
	[HasPowerBrakes],
	[HasAirConditioning],
	[OtherFeature],
	[HasHighPerformance],
	[HighPerformanceDocumented],
	[CarMake],
	[CarModel],
	[CarStyle],
	[ExtraData],
	[TitledTo],
	[HasPowerWindows],
	[ModifiedByUsername],
	[ModifiedDate],
	[Mileage],
	[CheckinMileage]
FROM [stg].[Auct_Car_DM_stg]