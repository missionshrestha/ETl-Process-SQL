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

INSERT INTO
    DW_DWH.DWH_C_BATCH_SCRIPTS
VALUES
    (
        'd_org_chn_ld_test',
        'This script loads chain/brand details',
        'NTLY',
        'Nightly',
        'NA',
        (
            SELECT
                MAX(JOB_ID)
            FROM
                DW_DWH.DWH_C_BATCH_SCRIPTS
        ) + 1
    );