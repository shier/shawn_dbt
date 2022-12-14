{{ config(materialized='view',schema='stg')}}
With Auct_Contact_Ex as (
	Select
	[ContactID],[Name],[SalutationID],[FirstName],[MiddleInitial],[LastName],[ContactSuffixID],[ShortNote],[UsersID],[ContactStatusID],
	[PreferredContactMethodID],[PreferredContactTime],[EmailAddress],[SourceID],[Created],[UpdateEventID],[DlNumber],[DlState],[SSN],[DOB],
	[PassportNumber],[PassportCountry],[LegacyID],[IDRef],[Active],[PartnerName],[HasAccountigLink],[AccountingID],[VendorAccountingID],
	[CommonID],[BCCustomerID],[BCVendorID] 
	From stg.[Auct_Contact_Incr] 
	Where [dbt_valid_to] is null
),
stg1 AS(
    SELECT 
    NULLIF(CONTACTID, '') AS ContactID,
    NULLIF(NAME, '') AS Name,
    NULLIF(SALUTATIONID, '') AS SalutationID,
    CASE
        WHEN FIRSTNAME = 'PHYLLIS/DROSE,'
            THEN REPLACE('FIRSTNAME', 'PHYLLIS/DROSE,', 'PHYLLIS DROSE')
        WHEN FIRSTNAME LIKE '%"%'
            THEN REPLACE(FIRSTNAME, '"', '')
        WHEN FIRSTNAME LIKE '%''%'
            THEN REPLACE(FIRSTNAME, '''', '')
        WHEN FIRSTNAME LIKE '%-%'
            THEN TRIM(REPLACE(FIRSTNAME, '-', ' '))
        WHEN FIRSTNAME LIKE '%?%'
            THEN TRIM(REPLACE(FIRSTNAME, '?', ''))
        WHEN FIRSTNAME LIKE '%\%'
            THEN TRIM(REPLACE(FIRSTNAME, '\', ''))
        WHEN FIRSTNAME LIKE '%|%'
            THEN TRIM(REPLACE(FIRSTNAME, '|', ''))
        WHEN FIRSTNAME LIKE '%`%'
            THEN TRIM(REPLACE(FIRSTNAME, '`', ''))
        WHEN FIRSTNAME LIKE '%’%'
            THEN TRIM(REPLACE(FIRSTNAME, '’', ''))
        WHEN FIRSTNAME LIKE '% & %'
            THEN TRIM(REPLACE(FIRSTNAME, ' & ', ' '))
        WHEN FIRSTNAME LIKE '%[a-z]&[a-z]%'
            THEN TRIM(REPLACE(FIRSTNAME, '&', ' '))
        WHEN FIRSTNAME LIKE '%&%'
            THEN TRIM(REPLACE(FIRSTNAME, '&', ''))
        WHEN FIRSTNAME LIKE '%,[a-z]%'
            THEN TRIM(REPLACE(FIRSTNAME, ',', ' '))
        WHEN FIRSTNAME LIKE '%,%'
            THEN TRIM(REPLACE(FIRSTNAME, ',', ''))
        WHEN FIRSTNAME LIKE '% / %'
            THEN REPLACE(FIRSTNAME, ' / ', ' ')
        WHEN FIRSTNAME LIKE '%/%'
            THEN REPLACE(FIRSTNAME, '/', ' ')
        WHEN FIRSTNAME LIKE '%[a-z]0[a-z]%'
            THEN REPLACE(FIRSTNAME, '0', 'O')
        WHEN FIRSTNAME LIKE '%[0-9]%'
            THEN TRIM(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(FIRSTNAME, '0', ''),
                '1', ''),
                '2', ''),
                '3', ''),
                '4', ''),
                '5', ''),
                '6', ''),
                '7', ''),
                '8', ''),
                '9', ''))
        ELSE FIRSTNAME
    END AS FirstName,
    CASE
        WHEN MIDDLEINITIAL LIKE '%"%'
            THEN REPLACE(MIDDLEINITIAL, '"', '')
        WHEN MIDDLEINITIAL LIKE '%''%'
            THEN REPLACE(MIDDLEINITIAL, '''', '')
        WHEN MIDDLEINITIAL LIKE '%-%'
            THEN TRIM(REPLACE(MIDDLEINITIAL, '-', ' '))
        WHEN MIDDLEINITIAL LIKE '%?%'
            THEN TRIM(REPLACE(MIDDLEINITIAL, '?', ''))
        WHEN MIDDLEINITIAL LIKE '%\%'
            THEN TRIM(REPLACE(MIDDLEINITIAL, '\', ''))
        WHEN MIDDLEINITIAL LIKE '%|%'
            THEN TRIM(REPLACE(MIDDLEINITIAL, '|', ''))
        WHEN MIDDLEINITIAL LIKE '%`%'
            THEN TRIM(REPLACE(MIDDLEINITIAL, '`', ''))
        WHEN MIDDLEINITIAL LIKE '%’%'
            THEN TRIM(REPLACE(MIDDLEINITIAL, '’', ''))
        WHEN MIDDLEINITIAL LIKE '% & %'
            THEN TRIM(REPLACE(MIDDLEINITIAL, ' & ', ' '))
        WHEN MIDDLEINITIAL LIKE '%[a-z]&[a-z]%'
            THEN TRIM(REPLACE(MIDDLEINITIAL, '&', ' '))
        WHEN MIDDLEINITIAL LIKE '%&%'
            THEN TRIM(REPLACE(MIDDLEINITIAL, '&', ''))
        WHEN MIDDLEINITIAL LIKE '%,[a-z]%'
            THEN TRIM(REPLACE(MIDDLEINITIAL, ',', ' '))
        WHEN MIDDLEINITIAL LIKE '%,%'
            THEN TRIM(REPLACE(MIDDLEINITIAL, ',', ''))
        WHEN MIDDLEINITIAL LIKE '% / %'
            THEN REPLACE(MIDDLEINITIAL, ' / ', ' ')
        WHEN MIDDLEINITIAL LIKE '%/%'
            THEN REPLACE(MIDDLEINITIAL, '/', ' ')
        WHEN MIDDLEINITIAL LIKE '%[a-z]0[a-z]%'
            THEN REPLACE(MIDDLEINITIAL, '0', 'O')
        WHEN MIDDLEINITIAL LIKE '%[0-9]%'
            THEN TRIM(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(MIDDLEINITIAL, '0', ''),
                '1', ''),
                '2', ''),
                '3', ''),
                '4', ''),
                '5', ''),
                '6', ''),
                '7', ''),
                '8', ''),
                '9', ''))
        ELSE MIDDLEINITIAL
    END AS MiddleInitial,
    CASE
        WHEN LASTNAME LIKE '%"%'
            THEN REPLACE(LASTNAME, '"', '')
        WHEN LASTNAME LIKE '%''%'
            THEN REPLACE(LASTNAME, '''', '')
        WHEN LASTNAME LIKE '%-%'
            THEN TRIM(REPLACE(LASTNAME, '-', ' '))
        WHEN LASTNAME LIKE '%?%'
            THEN TRIM(REPLACE(LASTNAME, '?', ''))
        WHEN LASTNAME LIKE '%\%'
            THEN TRIM(REPLACE(LASTNAME, '\', ''))
        WHEN LASTNAME LIKE '%|%'
            THEN TRIM(REPLACE(LASTNAME, '|', ''))
        WHEN LASTNAME LIKE '%`%'
            THEN TRIM(REPLACE(LASTNAME, '`', ''))
        WHEN LASTNAME LIKE '%’%'
            THEN TRIM(REPLACE(LASTNAME, '’', ''))
        WHEN LASTNAME LIKE '% & %'
            THEN TRIM(REPLACE(LASTNAME, ' & ', ' '))
        WHEN LASTNAME LIKE '%[a-z]&[a-z]%'
            THEN TRIM(REPLACE(LASTNAME, '&', ' '))
        WHEN LASTNAME LIKE '%&%'
            THEN TRIM(REPLACE(LASTNAME, '&', ''))
        WHEN LASTNAME LIKE '%,[a-z]%'
            THEN TRIM(REPLACE(LASTNAME, ',', ' '))
        WHEN LASTNAME LIKE '%,%'
            THEN TRIM(REPLACE(LASTNAME, ',', ''))
        WHEN LASTNAME LIKE '% / %'
            THEN REPLACE(LASTNAME, ' / ', ' ')
        WHEN LASTNAME LIKE '%/%'
            THEN REPLACE(LASTNAME, '/', ' ')
        WHEN LASTNAME LIKE '%[a-z]0[a-z]%'
            THEN REPLACE(LASTNAME, '0', 'O')
        WHEN LASTNAME LIKE '%[0-9]%'
            THEN TRIM(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(
                REPLACE(LASTNAME, '0', ''),
                '1', ''),
                '2', ''),
                '3', ''),
                '4', ''),
                '5', ''),
                '6', ''),
                '7', ''),
                '8', ''),
                '9', ''))
        ELSE LASTNAME
    END AS LastName,
    NULLIF(CONTACTSUFFIXID, '') AS ContactSuffixID,
    NULLIF(SHORTNOTE, '') AS ShortNote,
    NULLIF(USERSID, '') AS UserID,
    NULLIF(CONTACTSTATUSID, '') AS ContactStatusID,
    NULLIF(PREFERREDCONTACTMETHODID, '') AS PreferredContactMethodID,
    NULLIF(PREFERREDCONTACTTIME, '') AS PreferredContactTime,
    EmailAddress,
    CASE
        WHEN EMAILADDRESS LIKE '%@@%' -- remove redudant at characters
            THEN REPLACE(EMAILADDRESS, '@@', '@')
        WHEN EMAILADDRESS LIKE '_%@_% / _%@_%' AND LEN(EMAILADDRESS) - LEN(REPLACE(EMAILADDRESS, ' / ', '')) = 3 -- replace slash with space when it is between two emails
            THEN REPLACE(EMAILADDRESS, ' / ', ' ')
        ELSE EMAILADDRESS
    END AS Email_Cleaned, 
    NULLIF(SOURCEID, '') AS SourceID,
    NULLIF(CREATED, '') AS Created,
    NULLIF(UPDATEEVENTID, '') AS UpdateEventID,
    NULLIF(DLNUMBER, '') AS DLNumber,
    NULLIF(DLSTATE, '') AS DLState,
    NULLIF(SSN, '') AS SSN,
    NULLIF(DOB, '') AS DOB,
    NULLIF(PASSPORTNUMBER, '') AS PassportNumber,
    NULLIF(PASSPORTCOUNTRY, '') AS PassportCountry,
    NULLIF(LEGACYID, '') AS LegacyID,
    NULLIF(IDREF, '') AS IDRef,
    NULLIF(ACTIVE, '') AS IsActive,
    NULLIF(PARTNERNAME, '') AS PartnerName,
    NULLIF(HASACCOUNTIGLINK, '') AS HasAccountigLink,
    NULLIF(ACCOUNTINGID, '') AS AccountingID,
    NULLIF(VENDORACCOUNTINGID, '') AS VendorAccountingID,
    NULLIF(COMMONID, '') AS CommonID,
    NULLIF(BCCUSTOMERID, '') AS BCCustomerID,
    NULLIF(BCVENDORID, '') AS BCVendorID  
FROM 
    Auct_Contact_Ex
),
stg2 AS(
    SELECT
    ContactID,
    Name,
    SalutationID,
    FirstName,
    MiddleInitial,
    LastName,
    ContactSuffixID,
    ShortNote,
    UserID,
    ContactStatusID,
    PreferredContactMethodID,
    PreferredContactTime,
    EmailAddress,
    CASE         
        WHEN Email_Cleaned = '' OR -- empty string
              Email_Cleaned NOT LIKE '_%@_%._%' OR -- invalid email format
              Email_Cleaned NOT LIKE '%[a-z0-9!#$%&''*/=?^_`{|}~+-]%' OR -- only these characters are allowed
              /*local-part*/
              Email_Cleaned LIKE '._%' OR -- dot cannot be the first character
              Email_Cleaned LIKE '_%.@_%' OR -- dot cannot be the last character
              Email_Cleaned LIKE '%..%' OR -- dot cannot appear consecutively
              (Email_Cleaned LIKE '% %' AND LEN(Email_Cleaned) - LEN(REPLACE(Email_Cleaned, '@', '')) = 1) OR -- body cannot contains empty space
              /*domain-part*/
              SUBSTRING(Email_Cleaned, CHARINDEX('@',Email_Cleaned), LEN(Email_Cleaned)) NOT LIKE '%[^a-z0-9.-]%' OR -- domain contains invalid characters
              Email_Cleaned LIKE '%@[-0-9]%' OR -- domain starts with hyphen or digit
              Email_Cleaned LIKE '_%-' -- domain ends with hpthen
            THEN NULL
        WHEN Email_Cleaned LIKE '%_.com[a-z0-9]%' -- separate multiple emails with space
            THEN REPLACE(Email_Cleaned, '.com', '.com ')        
        WHEN Email_Cleaned LIKE '_%@_%@_%' AND Email_Cleaned NOT LIKE '% %' -- remove email that contains more than one at
            THEN NULL
        ELSE Email_Cleaned
    END AS Email_Cleaned,
    SourceID,
    Created,
    UpdateEventID,
    DLNumber,
    DLState,
    SSN,
    DOB,
    PassportNumber,
    PassportCountry,
    LegacyID,
    IDRef,
    IsActive,
    PartnerName,
    HasAccountigLink,
    AccountingID,
    VendorAccountingID,
    CommonID,
    BCCustomerID,
    BCVendorID   
FROM 
    stg1
)

SELECT
    [ContactID],[Name],[SalutationID],[FirstName],[MiddleInitial],[LastName],[ContactSuffixID],[ShortNote],
    UserID as [UsersID],
    [ContactStatusID],[PreferredContactMethodID],[PreferredContactTime],[EmailAddress] as [Email],
    CASE
        WHEN Email_Cleaned LIKE '%cc:%'
        THEN REPLACE(Email_Cleaned, 'cc:', '')
        WHEN Email_Cleaned LIKE '%business:%'
        THEN REPLACE(Email_Cleaned, 'business:', '')
        ELSE Email_Cleaned
    END AS Email_Cleaned,
    [SourceID],[Created],[UpdateEventID],[DlNumber],[DlState],[SSN],[DOB],
    [PassportNumber],[PassportCountry],[LegacyID],[IDRef],
    IsActive as [Active],
    PartnerName,
    HasAccountigLink,
    AccountingID,
    VendorAccountingID,
    CommonID,
    BCCustomerID,
    BCVendorID   
FROM stg2

