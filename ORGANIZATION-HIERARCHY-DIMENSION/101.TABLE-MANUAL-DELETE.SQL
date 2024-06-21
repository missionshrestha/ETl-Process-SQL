/* **************CREATED BY MISSION SHRESTHA, 2024/06/21 ****************** */

-- CAN BE USED TO DELETE A PARTICULAR DAY DATA IN DATA WAREHOUSE USING THE TIMESTAMP .

-- SALES EXAMPLE

/* select distinct rcd_ins_ts, count(*) from DM_MERCH.DM_F_MEAS_FACT_ILD_B group by 1;
select distinct rcd_ins_ts, count(*) from dw_dwh.dwh_f_inv_il_b_ms group by 1;

delete from dw_dwh.dwh_f_inv_ild_b_ms where rcd_ins_ts='2024-06-13 00:05:55.446 -0700';
delete from dw_dwh.dwh_f_inv_il_b _ms where rcd_ins_ts='2024-06-13 00:05:58.178 -0700'; */