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

-- CHAIN BATCH SCRIPT JOB-ID:2
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

-- AREA BATCH SCRIPT JOB-ID:3
INSERT INTO
    DW_DWH.DWH_C_BATCH_SCRIPTS
VALUES
    (
        'd_org_ara_ld_test',
        'This script loads AREA details',
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

-- AREA BATCH SCRIPT JOB-ID:4
INSERT INTO
    DW_DWH.DWH_C_BATCH_SCRIPTS
VALUES
    (
        'd_org_rgn_ld_test',
        'This script loads REGION details',
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

-- DISTRICT BATCH SCRIPT JOB-ID:5
INSERT INTO
    DW_DWH.DWH_C_BATCH_SCRIPTS
VALUES
    (
        'd_org_dst_ld_test',
        'This script loads DISTRICT details',
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