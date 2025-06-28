select * from fin_tm_ht_income_bills_cost_dly where data_date like '%2025-05%' order by data_date;
# select * from fin_tm_ht_income_bills_cost_dly order by data_date;
select * from fin_tm_wxt_recharge_cost_dly where data_date like '%2025-05%' order by data_date desc;
select * from fin_tm_cid_recharge_cost_dly where data_date like '%2025-05%' order by data_date desc;
select * from fin_tm_cid_recharge_cost_dly;
select * from fin_tm_tmyp_bills_cost_dly;
select * from fin_tm_tmcs_bills_cost_dly;


-- 抖音自营_巨量千川_充值类费用
select * from fin_dy_jlqc_recharge_cost_dly where data_date like '%2025-05%'  order by data_date desc;
-- 抖音自营_抖店_结算账单类费用
select * from fin_dy_dd_settle_bills_cost_dly where data_date like '%2025-05%' order by data_date desc;-- 23473
select * from fin_dy_dd_settle_bills_cost_dly where order_id like '%6941903228559365845' and data_date like '%2025-05%' order by data_date desc;
-- 抖音自营_抖店_资金账单类费用
select * from fin_dy_dd_funds_bills_cost_dly where data_date like '%2025-05%' order by data_date desc;


-- 拼多多_商家后台_收入和账单类费用
select * from fin_pdd_ht_income_bills_cost_dly where data_date like '%2025-05%' order by data_date desc;
-- 拼多多_商家后台_充值类费用
select * from fin_pdd_ht_recharge_cost_dly where data_date like '%2025-05%' order by data_date desc;


-- 京东POP_京东金融_收入和账单类费用
select * from fin_jdpop_jdfinance_income_bills_cost_dly where data_date like '%2025-05%' order by data_date desc;
-- 京东POP_精准通_充值类费用
select * from fin_jdpop_jzt_recharge_cost_dly where data_date like '%2025-05%' order by data_date desc;




-- 京东自营_精准通充值类费用
select * from fin_jd_jzt_recharge_cost_dly where data_date like '%2025-05%' order by data_date desc;

# select CURRENT_DATE() - INTERVAL 30 DAY from dual;



-- 得物财务数据
select * from fin_dw_ht_sale_detail_dly  where order_id = '110173233805100936' order by data_get_datetime; -- 126
select * from fin_dw_ht_sale_detail_dly where data_date = '2025-05-08' and order_id = '110171918354152805'; -- 126
select * from fin_dw_ht_sale_detail_dly; -- 126
select * from fin_dw_ht_return_refund_detail_dly where order_id = '110171897827557401'; -- 23
select * from fin_dw_ht_others_cost_detail_dly;
select * from fin_dw_ht_deposit_change_detail_dly;-- 4


-- 唯品会财务数据
select * from fin_vph_supplier_platform_sale_detail_dly where data_date between '2025-03-01' and '2025-04-02' and data_get_datetime='2025-05-12 14:38:13';
select * from fin_vph_supplier_platform_sale_detail_dly;
select * from fin_vph_supplier_platform_difference_detail_dly;



-- 小红书
select * from fin_xhs_qf_sale_detail_dly where report_id in ('','');
select * from fin_xhs_qf_sale_detail_dly;
select * from fin_xhs_qf_refund_detail_dly;
select * from fin_xhs_qf_ship_fee_detail_dly;


-- 云集POP
select * from fin_yunjipop_ht_sale_detail_dly;


-- 微信商城
select * from fin_wxshop_yzshop_bills_detail_dly;
select * FROM fin_wxshop_yzshop_bills_detail_dly WHERE data_date > CURRENT_DATE() - INTERVAL 30 DAY and store_id ='39279798';
select CURRENT_DATE() - INTERVAL 30 DAY from dual;

-- 微信视频号
select * from fin_wxsph_wxxd_cash_flow_detail_dly;

--  小米有品
select * from fin_xmyp_ht_warehouse_income_detail_mly; -- 1
select * from fin_xmyp_ht_refund_detail_dly;-- 13
select * from fin_xmyp_ht_sale_detail_dly;-- 723
select * from fin_xmyp_ht_warehouse_cost_detail_dly; -- 90
select * from fin_xmyp_ht_shipping_fee_detail_dly; -- 107
select * from fin_xmyp_ht_plus_minus_detail_dly; -- 13
select * from fin_xmyp_ht_violation_management_detail_dly; -- 6786



-- 市场部费用
select * from fin_md_jg_account_flow_detail_dly;
select * from fin_md_pgy_account_flow_detail_dly;
select * from fin_md_tbxh_account_flow_detail_dly;
select * from fin_md_sljj_account_flow_detail_dly;




-- 验证
select count(1) from fin_xmyp_ht_refund_detail_dly group by refund_id;
select * from fin_xmyp_ht_shipping_fee_detail_dly group by order_id having count(1)>1;




-- 京东POP
select * from  fin_jdpop_jdfinance_income_bills_cost_dly;
select * from  fin_jdpop_jzt_recharge_cost_dly order by data_date desc;