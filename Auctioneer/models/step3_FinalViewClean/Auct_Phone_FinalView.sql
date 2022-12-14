{{ config(materialized='view',schema='stg')}}
with Auct_Phone_Ex AS (
   Select
	[PhoneID],[CountryID],[AreaCode],[PhoneNumber],[Created],[UpdateEventID],[Active],[WebPhoneID] 
   From stg.[Auct_Phone_Incr] 
   Where [dbt_valid_to] is null
),
PhoneCol AS (
   SELECT 
      NULLIF(PHONEID, '') AS PhoneID,
      NULLIF(COUNTRYID, '') AS CountryID, 
      NULLIF(AREACODE, '') AS AreaCode,
      -- PHONENUMBER AS P_Orin,
      TRIM(REPLACE(TRANSLATE(UPPER(PHONENUMBER), '()-.,/+?_&;"@=', '              '), ' ', '')) AS PhoneNumber,
      NULLIF(CREATED, '') AS Created,
      NULLIF(UPDATEEVENTID, '') AS UpdateEventID,
      NULLIF(ACTIVE, '') AS IsActive,
      NULLIF(WEBPHONEID, '') AS WebPhoneID
   FROM 
      Auct_Phone_Ex
)
SELECT 
   PhoneID,
   CountryID, 
   CASE
      WHEN AreaCode = ''
         THEN NULL
      ELSE AreaCode
   END AS AreaCode,
   -- P_Orin,
   CASE
      WHEN
           PhoneNumber NOT LIKE '%[^0+$]%' OR -- Remove phone number that is all 0(s)
           PhoneNumber IN ('', 'NA', 'NONE', 'N', 'UNKNOWN', 'TEST', 'NOW4WAX') OR -- Remove empty string and special cases
           PhoneNumber LIKE '%SAM%' -- Remove SAM like string
         THEN NULL
      WHEN PhoneNumber IN ('741-O895', '371-9O99')
          THEN REPLACE(PhoneNumber, 'O', '0')
      WHEN PhoneNumber LIKE '%[0-9]%' AND ISNUMERIC(RIGHT(PhoneNumber, 1)) = 0 -- Remove name after phone
         THEN SUBSTRING(PhoneNumber, 1 , LEN(PhoneNumber) - PATINDEX('%[0-9]%', REVERSE(PhoneNumber)) + 1) 
      WHEN PhoneNumber LIKE '%[0-9]EXT[0-9]%' OR -- Standardize phone extension
           PhoneNumber LIKE '%[0-9]EST[0-9]%' OR
           PhoneNumber LIKE '%[0-9]XTN[0-9]%' OR
           PhoneNumber LIKE '%[0-9]XT[0-9]%' OR
           PhoneNumber LIKE '%[0-9]EX[0-9]%' OR
           PhoneNumber LIKE '%[0-9]X[0-9]%' OR
           PhoneNumber LIKE '%[0-9]E[0-9]%'
         THEN REPLACE(REPLACE(REPLACE(translate(PhoneNumber, 'ENSTX', '#####'), '#', '+-'), '-+', ''), '+-', ' EXT ')
      WHEN PhoneNumber LIKE '%[0-9]OPTION[0-9]%'
         THEN
            CASE
               WHEN PATINDEX('%O%', PhoneNumber) = PATINDEX('%[a-z]%', REVERSE(PhoneNumber)) - 1 -- If length of prefix equal to suffix
                  THEN CONCAT(SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - 1), ' OR ', SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) + 6, LEN(PhoneNumber)))
               ELSE
                  CASE
                     WHEN SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) - (PATINDEX('%[a-z]%', REVERSE(PhoneNumber)) - 1) , PATINDEX('%[a-z]%', REVERSE(PhoneNumber)) - 1) = SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) + 6, LEN(PhoneNumber))
                        THEN SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - 1)
                     ELSE
                        CONCAT(
                           SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - 1), 
                           ' OR ', 
                           CONCAT(
                              SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - PATINDEX('%[a-z]%', REVERSE(PhoneNumber))),
                              SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) + 6, LEN(PhoneNumber)))
                           )
                  END
            END
      WHEN PhoneNumber LIKE '%[0-9]OPT[0-9]%'
         THEN
            CASE
               WHEN PATINDEX('%O%', PhoneNumber) = PATINDEX('%[a-z]%', REVERSE(PhoneNumber)) - 1 -- If length of prefix equal to suffix
                  THEN CONCAT(SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - 1), ' OR ', SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) + 3, LEN(PhoneNumber)))
               ELSE
                  CASE
                     WHEN SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) - (PATINDEX('%[a-z]%', REVERSE(PhoneNumber)) - 1) , PATINDEX('%[a-z]%', REVERSE(PhoneNumber)) - 1) = SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) + 3, LEN(PhoneNumber))
                        THEN SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - 1)
                     ELSE
                        CONCAT(
                           SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - 1), 
                           ' OR ', 
                           CONCAT(
                              SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - PATINDEX('%[a-z]%', REVERSE(PhoneNumber))),
                              SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) + 3, LEN(PhoneNumber)))
                           )
                  END
            END
      WHEN PhoneNumber LIKE '%[0-9]OR[0-9]%'
                  THEN
            CASE
               WHEN PATINDEX('%O%', PhoneNumber) = PATINDEX('%[a-z]%', REVERSE(PhoneNumber)) - 1 -- If length of prefix equal to suffix
                  THEN CONCAT(SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - 1), ' OR ', SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) + 2, LEN(PhoneNumber)))
               ELSE
                  CASE
                     WHEN SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) - (PATINDEX('%[a-z]%', REVERSE(PhoneNumber)) - 1) , PATINDEX('%[a-z]%', REVERSE(PhoneNumber)) - 1) = SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) + 2, LEN(PhoneNumber))
                        THEN SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - 1)
                     ELSE
                        CONCAT(
                           SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - 1), 
                           ' OR ', 
                           CONCAT(
                              SUBSTRING(PhoneNumber, 1 , PATINDEX('%O%', PhoneNumber) - PATINDEX('%[a-z]%', REVERSE(PhoneNumber))),
                              SUBSTRING(PhoneNumber, PATINDEX('%O%', PhoneNumber) + 2, LEN(PhoneNumber)))
                           )
                  END
            END
      WHEN PhoneNumber LIKE '%[0-9]TEAM[0-9]%' 
         THEN SUBSTRING(PhoneNumber, 1 , PATINDEX('%T%', PhoneNumber) - 1)
      WHEN PhoneNumber LIKE '%[0-9]FAX[0-9]%' 
         THEN SUBSTRING(PhoneNumber, 1 , PATINDEX('%F%', PhoneNumber) - 1)
      WHEN TRIM(PhoneNumber) NOT LIKE '%[^a-zA-Z]%'
         THEN NULL
      WHEN PhoneNumber LIKE '%[a-z]%' AND PhoneNumber NOT LIKE '%[0-9] EXT [0-9]%' AND PhoneNumber NOT LIKE '%[0-9] OR [0-9]%'
         THEN NULL
      ELSE PhoneNumber
    END AS PhoneNumber,
    Created,
    UpdateEventID,
    IsActive as [Active],
    WebPhoneID
FROM  PhoneCol