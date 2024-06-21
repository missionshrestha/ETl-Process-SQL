/* **************CREATED BY MISSION SHRESTHA, 2024/06/21 ****************** */

-- ORGANIZATION BATCH SCRIPT

-- INITIAL BATCH SCRIPT JOB-ID:1
INSERT INTO
    DW_DWH.DWH_C_BATCH_SCRIPTS
VALUES
    (
        'd_org_company_ld_test',
        'This script loads Company details',
        'NTLY',
        'Nightly',
        'NA',
        1
    );


-- ITEM detail batch loading- JOB-ID:89
INSERT INTO
    ROBLING_MAY_DB.DW_DWH.DWH_C_BATCH_SCRIPTS
VALUES
    (
        'd_prd_itm_ld_ms',
        'This script loads PRODUCT ITEM details',
        'NTLY',
        'Nightly',
        'NA',
        (
            SELECT
                MAX(JOB_ID)
            FROM
                ROBLING_MAY_DB.DW_DWH.DWH_C_BATCH_SCRIPTS
        ) + 1
    );
 */