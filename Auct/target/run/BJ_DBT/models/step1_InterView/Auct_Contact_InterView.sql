create view "dbo_stg"."Auct_Contact_InterView__dbt_tmp" as
    
Select
	[CONTACTID] [ContactID],
	cast([NAME] as nvarchar(4000)) [Name],
	[SALUTATIONID] [SalutationID],
	cast([FIRSTNAME] as nvarchar(4000)) [FirstName],
	cast([MIDDLEINITIAL] as nvarchar(4000)) [MiddleInitial],
	cast([LASTNAME] as nvarchar(4000)) [LastName],
	[CONTACTSUFFIXID] [ContactSuffixID],
	cast([SHORTNOTE] as nvarchar(4000)) [ShortNote],
	[USERSID] [UsersID],
	[CONTACTSTATUSID] [ContactStatusID],
	[PREFERREDCONTACTMETHODID] [PreferredContactMethodID],
	cast([PREFERREDCONTACTTIME] as nvarchar(4000)) [PreferredContactTime],
	cast([EMAILADDRESS] as nvarchar(4000)) [EmailAddress],
	[SOURCEID] [SourceID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([DLNUMBER] as nvarchar(4000)) [DlNumber],
	cast([DLSTATE] as nvarchar(4000)) [DlState],
	cast([SSN] as nvarchar(4000)) [SSN],
	cast([DOB] as nvarchar(4000)) [DOB],
	cast([PASSPORTNUMBER] as nvarchar(4000)) [PassportNumber],
	cast([PASSPORTCOUNTRY] as nvarchar(4000)) [PassportCountry],
	[LEGACYID] [LegacyID],
	[IDREF] [IDRef],
	[ACTIVE] [Active],
	cast([PARTNERNAME] as nvarchar(4000)) [PartnerName],
	[HASACCOUNTIGLINK] [HasAccountigLink],
	cast([ACCOUNTINGID] as nvarchar(4000)) [AccountingID],
	cast([VENDORACCOUNTINGID] as nvarchar(4000)) [VendorAccountingID],
	[COMMONID] [CommonID],
	cast([BCCUSTOMERID] as nvarchar(4000)) [BCCustomerID],
	cast([BCVENDORID] as nvarchar(4000)) [BCVendorID]
From stg.[Auct_Contact_Raw]
