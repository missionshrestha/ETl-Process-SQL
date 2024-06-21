/* **************CREATED BY MISSION SHRESTHA, 2024/06/21 ****************** */

-- EXAMPLE FOR SALES
/* 
-- looker stage data
(select 'LOOKER' AS NAME, sum(F_EOH_CST) AS EOH_CST, sum(F_EOH_RTL) AS EOH_RTL, sum(F_EOH_QTY) AS EOH_QTY from DM_MERCH_V.DV_DM_F_MEAS_CCY_IL_B )
UNION

select 'STAGE' AS NAME, sum(f_oh_cst_lcl), sum(f_oh_rtl_lcl), sum(F_OH_QTY) from DW_STG_V.V_STG_F_INV_ILD_B_MS ;

-- looker warehouse data 
(select 'LOOKER' AS NAME, sum(F_EOH_CST) AS EOH_CST, sum(F_EOH_RTL) AS EOH_RTL, sum(F_EOH_QTY) AS EOH_QTY from DM_MERCH_V.DV_DM_F_MEAS_CCY_IL_B )
UNION

select 'WAREHOUSE' AS NAME, sum(f_oh_cst_lcl), sum(f_oh_rtl_lcl), sum(F_OH_QTY) from DW_DWH.DWH_F_INV_ILD_B_MS ;
select sum(f_oh_cst_lcl), sum(f_oh_rtl_lcl), sum(F_OH_QTY) from DW_DWH.DWH_F_INV_ILD_B_MS ; */