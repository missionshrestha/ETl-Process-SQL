/* **************CREATED BY MISSION SHRESTHA, 2024/06/21 ****************** */

-- DELETE ORGANIZATION BATCH LOGS

SELECT * FROM DW_DWH.DWH_C_BATCH_LOG;
SELECT * FROM DW_DWH.DWH_C_PARAM;
SELECT * FROM DW_DWH.DWH_C_BATCH_SCRIPTS;
SELECT * FROM DW_DWH.DWH_C_LOAD_AUDIT_LOG;

DELETE FROM DW_DWH.DWH_C_BATCH_LOG
WHERE DW_DWH.DWH_C_BATCH_LOG.JOB_ID = 3 ;

/* DELETE FROM DW_DWH.DWH_C_BATCH_SCRIPTS
WHERE DW_DWH.DWH_C_BATCH_SCRIPTS.JOB_ID = 1 ; */