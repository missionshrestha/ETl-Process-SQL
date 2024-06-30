/* **************CREATED BY MISSION SHRESTHA, 2024/06/21 ****************** */

-- ORGANIZATION STAGE VIEW


-- Company
create or replace view DW_STG_V.V_STG_D_ORG_COMPANY_LU(
COMPANY_ID,
COMPANY_DESC,
RMS_CO_ADD1,
RMS_CO_ADD2,
RMS_CO_ADD3,
RMS_CO_CITY,
RMS_CO_STATE,
RMS_CO_COUNTRY,
RMS_CO_POST

) as
SELECT 
COMP_LND.COMPANY                AS COMPANY_ID , 
COMP_LND.CO_NAME                AS COMPANY_DESC , 
COMP_LND.CO_ADD1                AS RMS_CO_ADD1 , 
COMP_LND.CO_ADD2                AS RMS_CO_ADD2 , 
COMP_LND.CO_ADD3                AS RMS_CO_ADD3 , 
COMP_LND.CO_CITY                AS RMS_CO_CITY , 
COMP_LND.CO_STATE               AS RMS_CO_STATE , 
COMP_LND.CO_COUNTRY             AS RMS_CO_COUNTRY , 
COMP_LND.CO_POST                AS RMS_CO_POST 

FROM DW_LND.COMPANY COMP_LND;



-- chain
CREATE
OR REPLACE VIEW DW_STG_V.V_STG_D_ORG_CHN_LU (
    CHN_ID,
    CHN_DESC,
    RMS_CHN_SDESC,
    RMS_SRC_ID,
    RMS_LOAD_DATE 
) as
SELECT
    CASE
        WHEN S.BRAND IS NOT NULL THEN S.BRAND
        ELSE '0'
    END                                                 AS CHN_ID,
    COALESCE(S.BRAND_DESC, 'N/A')                       AS CHN_DESC,
    COALESCE(S.BRAND_DESC, 'N/A')                       AS RMS_CHN_SDESC,
    '0'                                                 AS RMS_SRC_ID,
    CURRENT_DATE()                                      AS RMS_LOAD_DATE 
FROM
    DW_LND.BRAND S;


-- -- AREA
-- create
-- or replace view DW_STG_V.V_STG_D_ORG_ARA_LU_MS (
--     ARA_ID,
--     ARA_DESC,
--     RMS_ARA_SDESC,
--     RMS_SRC_ID,
--     RMS_LOAD_DATE 
-- ) as
-- SELECT
--     CASE
--         WHEN S.AREA IS NOT NULL THEN S.AREA
--         ELSE '0'
--     END                                     AS ARA_ID,
--     COALESCE(S.AREA_DESC, 'N/A')            AS ARA_DESC,
--     COALESCE(S.AREA_DESC, 'N/A')            AS RMS_ARA_SDESC,
--     '0'                                     AS RMS_SRC_ID,
--     CURRENT_DATE()                          AS RMS_LOAD_DATE 
-- FROM
--     DW_LND.AREA_MS S;

-- -- REGION
-- create
-- or replace view DW_STG_V.V_STG_D_ORG_RGN_LU_MS (
--     RGN_ID,
--     RGN_DESC,
--     ARA_ID,
--     RMS_RGN_SDESC,
--     RMS_SRC_ID,
--     RMS_LOAD_DATE 
-- ) as
-- SELECT
--     CASE
--         WHEN S.REGION IS NOT NULL THEN S.REGION
--         WHEN '0' IS NOT NULL THEN '0'
--         ELSE NULL
--     END                                                         AS RGN_ID,
--     CASE
--         WHEN S.REGION_DESC IS NOT NULL THEN S.REGION_DESC
--         WHEN 'N/A' IS NOT NULL THEN 'N/A'
--         ELSE NULL
--     END                                                         AS RGN_DESC,
--     CASE
--         WHEN S.AREA IS NOT NULL THEN S.AREA
--         WHEN '0' IS NOT NULL THEN '0'
--         ELSE NULL
--     END                                                         AS ARA_ID,
--     CASE
--         WHEN S.REGION_DESC IS NOT NULL THEN S.REGION_DESC
--         WHEN 'N/A' IS NOT NULL THEN 'N/A'
--         ELSE NULL
--     END                                                         AS RMS_RGN_SDESC,
--     '0'                                                         AS RMS_SRC_ID,
--     CURRENT_DATE()                                              AS RMS_LOAD_DATE 
        
-- FROM
--     DW_LND.REGION_MS S;

-- -- DISTRICT
-- create
-- or replace view DW_STG_V.V_STG_D_ORG_DST_LU_MS (
--     DST_ID,
--     DST_DESC,
--     RGN_ID,
--     RMS_DST_SDESC,
--     RMS_SRC_ID,
--     RMS_LOAD_DATE
-- ) as
-- SELECT
--     CASE
--         WHEN (
--             ((UPPER(DISTRICT) || ':') || UPPER(REGION)) IS NOT NULL
--         ) THEN ((UPPER(DISTRICT) || ':') || UPPER(REGION))
--         WHEN ('0' IS NOT NULL) THEN '0'
--         ELSE NULL
--     END                                                                 AS DST_ID,
--     COALESCE(DIST_DESC, 'N/A')                                          AS DST_DESC,
--     COALESCE(REGION, '0')                                               AS RGN_ID,
--     COALESCE(DIST_DESC, 'N/A')                                          AS RMS_DST_SDESC,
--     '0'                                                                 AS RMS_SRC_ID,
--     CURRENT_DATE()                                                      AS RMS_LOAD_DATE
-- FROM
--     DW_LND.DISTRICT_MS;

-- -- LOCATION DWH_D_ORG_LOC_LU
-- create
-- or replace view DW_STG_V.V_STG_D_ORG_LOC_LU_MS (
--     LOC_ID,
--     LOC_DESC,
--     DST_ID,
--     RGN_ID,
--     ARA_ID,
--     CHN_ID,
--     CHNL_ID,
--     LOC_OP_MODEL,
--     LOC_CHANNEL_TYPE,
--     LOC_PHY_WH_NUM,
--     LOC_PRI_VWH,
--     ZIPCODE,
--     LOC_COUNTRY_CDE,
--     LOC_COUNTRY_CDE_DESC,
--     LOC_CLIMATE,
--     LOC_TIER,
--     LOC_VOLUME,
--     LOC_START_DT,
--     LOC_END_DT,
--     LOC_SELLING_SQ_FT,
--     LOC_STKHLD_IND,
--     LOC_PROTEC_IND,
--     LOC_ADDDRESS,
--     LOC_CITY,
--     LOC_STATE_CDE,
--     LOC_STATE_CDE_DESC,
--     LOC_TIME_ZNE,
--     LOC_LAT,
--     LOC_LON,
--     CNCY_CDE,
--     LOC_FMT_CDE,
--     LOC_FMT_CDE_DESC,
--     LOC_TYP_CDE,
--     LOC_TYP_CDE_DESC,
--     LOC_VAT_RGN,
--     RMS_STR_DNUM,
--     RMS_Q_STR_SDESC
-- ) as
-- SELECT
--     STORE_NO AS LOC_ID,
--     STORE_NO AS RMS_STR_DNUM,
--     STORE_NAME AS LOC_DESC,
--     STORE_NAME RMS_Q_STR_SDESC,
--     CASE
--         WHEN (
--             ((UPPER(DISTRICT) || ':') || UPPER(REGION)) IS NOT NULL
--         ) THEN ((UPPER(DISTRICT) || ':') || UPPER(REGION))
--         WHEN ('0' IS NOT NULL) THEN '0'
--         ELSE NULL
--     END AS DST_ID,
--     COALESCE(REGION, '0') AS RGN_ID,
--     COALESCE(AREA, '0') AS ARA_ID,
--     COALESCE(BRAND, '0') AS CHN_ID,
--     COALESCE(CHANNEL, '0') AS CHNL_ID,
--     OP_MODEL AS LOC_OP_MODEL,
--     LOC_TYPE AS LOC_CHANNEL_TYPE,
--     PHY_WH_IDNT AS LOC_PHY_WH_NUM,
--     -- NULL AS LOC_PRI_VWH,
--     ZIPCODE AS ZIPCODE,
--     COUNTRY_CODE AS LOC_COUNTRY_CDE,
--     COUNTRY AS LOC_COUNTRY_CDE_DESC,
--     CLIMATE AS LOC_CLIMATE,
--     TIER AS LOC_TIER,
--     VOLUME AS LOC_VOLUME,
--     OPEN_DATE AS LOC_START_DT,
--     CLOSE_DATE AS LOC_END_DT,
--     SELLING_SQUARE_FT AS LOC_SELLING_SQ_FT,
--     STOCKHOLDING_IND AS LOC_STKHLD_IND,
--     CASE
--         WHEN (
--             STOCKHOLDING_IND ='Y'
--         ) THEN 1
        
--         ELSE 0
--     END AS LOC_STKHLD_IND,
--     -- NULL AS LOC_PROTEC_IND,
--     ADDRESS AS LOC_ADDDRESS,
--     CITY AS LOC_CITY,
--     STATE_CODE AS LOC_STATE_CDE,
--     STATE_NAME AS LOC_STATE_CDE_DESC,
--     LOC_TIME_ZNE AS LOC_TIME_ZNE,
--     LATITUTE AS LOC_LAT,
--     LONGITUTE AS LOC_LON,
--     COALESCE(CURRENCY_CODE, '0') CNCY_CDE,
--     S.STORE_FORMAT AS LOC_FMT_CDE,
--     -- S.FORMAT_NAME AS LOC_FMT_CDE_DESC,
--     -- 0 AS LOC_TYP_CDE,
--     -- 'Store' AS LOC_TYP_CDE_DESC,
--     -- 0 AS LOC_VAT_RGN,
--     TOTAL_SQUARE_FT AS 
-- FROM
--     DW_LND.GYM_LOC_EXTRACT_QS_V_MS G
--     LEFT JOIN DW_LND.STORE_FORMAT_MS S ON G.STORE_FORMAT = S.STORE_FORMAT
-- WHERE
--     LOC_DESC <> 'zzz'
--     AND CHN_ID IN ('NexusNova', 'DC')
-- UNION
-- SELECT
--     WH AS LOC_ID,
--     WH_NAME AS LOC_DESC,
--     '-1' AS DST_ID,
--     '-1' AS RGN_ID,
--     '-1' AS ARA_ID,
--     '-1' AS CHN_ID,
--     C.CHNL_ID AS CHNL_ID,
--     NULL AS LOC_OP_MODEL,
--     NULL AS LOC_CHANNEL_TYPE,
--     PHYSICAL_WH AS LOC_PHY_WH_NUM,
--     PRIMARY_VWH AS LOC_PRI_VWH,
--     NULL AS ZIPCODE,
--     NULL AS LOC_COUNTRY_CDE,
--     NULL AS LOC_COUNTRY_CDE_DESC,
--     NULL AS LOC_CLIMATE,
--     NULL AS LOC_TIER,
--     NULL AS LOC_VOLUME,
--     NULL AS LOC_START_DT,
--     NULL AS LOC_END_DT,
--     0 AS LOC_SELLING_SQ_FT,
--     STOCKHOLDING_IND AS LOC_STKHLD_IND,
--     PROTECTED_IND AS LOC_PROTEC_IND,
--     WH_ADD1 AS LOC_ADDDRESS,
--     NULL AS LOC_CITY,
--     NULL AS LOC_STATE_CDE,
--     NULL AS LOC_STATE_CDE_DESC,
--     NULL AS LOC_TIME_ZNE,
--     NULL AS LOC_LAT,
--     NULL AS LOC_LON,
--     COALESCE(CURRENCY_CODE, '0') CNCY_CDE,
--     NULL AS LOC_FMT_CDE,
--     NULL AS LOC_FMT_CDE_DESC,
--     1 AS LOC_TYP_CDE,
--     'Warehouse' AS LOC_TYP_CDE_DESC,
--     VAT_REGION AS LOC_VAT_RGN,
-- FROM
--     DW_LND.WH_MS W
--     LEFT JOIN DW_DWH_V.V_DWH_D_ORG_CHNL_LU_MS C ON W.CHANNEL_ID = C.CHNL_KEY;