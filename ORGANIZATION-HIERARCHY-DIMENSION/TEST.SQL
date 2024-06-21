/* **************CREATED BY MISSION SHRESTHA, 2024/06/21 ****************** */

SELECT MODULE_TYP, JOB_ID FROM DW_DWH_V.V_DWH_C_BATCH_SCRIPTS 
            WHERE LOWER(SCRIPT_NAME)=LOWER('d_org_company_ld_test')