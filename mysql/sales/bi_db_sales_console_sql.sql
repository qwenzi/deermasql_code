-- 天猫自营_生意参谋_商品排行日数据
select data_date,count(1) from sales_tm_sycm_goods_ranking_dly group by data_date;
select count(1),store_name from sales_tm_sycm_goods_ranking_dly group by store_name;
select * from sales_tm_sycm_goods_ranking_dly where data_date like '%2025-04-02%';
select * from sales_tm_sycm_goods_ranking_dly ;


-- 天猫自营_万相台_站内推广费日数据
# select * from sales_tm_wxt_promotion_fee_dly;
select count(1),store_name from sales_tm_wxt_promotion_fee_dly group by store_name;
select data_date,count(1) from sales_tm_wxt_promotion_fee_dly group by data_date;


-- 天猫自营_喵速达_订单明细日数据
select * from  sales_tm_msd_order_detail_dly;
select data_date,count(1) from sales_tm_msd_order_detail_dly group by data_date;
select count(1) from sales_tm_msd_order_detail_dly;


-- 天猫国际_直营商家工作台_订单明细日数据
select data_date,count(1) from sales_tmgj_wp_order_detail_dly group by data_date;


-- 天猫国际_直营商家工作台_退款明细日数据
select data_date,count(1) from sales_tmgj_wp_refund_detail_dly group by data_date;


-- 天猫超市_天机_商品销售排行日数据
select data_date,count(1) from sales_tmcs_tj_goods_ranking_dly group by data_date;



-- 天猫超市_智多星_站内推广费日数据
select data_date,count(1) from sales_tmcs_zdx_promotion_fee_dly group by data_date;



-- 京东自营_京麦_商品业绩日数据
select * from sales_jd_jm_goods_performance_dly where data_date like '%2025-06-04%';
select data_date,count(1) from sales_jd_jm_goods_performance_dly group by data_date;
select * from sales_jd_jm_goods_performance_dly where data_date  between '2025-06-15' and '2025-06-15';

-- 京东自营_精准通_站内推广费日数据
select * from sales_jd_jzt_promotion_fee_dly where login_account='德尔玛代投01' order by data_date;
select login_account,count(1) from sales_jd_jzt_promotion_fee_dly group by login_account;
select data_date,count(1)from sales_jd_jzt_promotion_fee_dly group by data_date;


-- 京东pop_商智_商品明细日数据
select * from sales_jd_sz_goods_details_dly order by data_date;
select data_date,count(1) from sales_jd_sz_goods_details_dly group by data_date;


-- 京东pop_精准通_单品推广明细日数据
select data_date,count(1) from sales_jd_jzt_promotion_details_dly group by data_date;
select * from sales_jd_jzt_promotion_details_dly where data_date = '2025-06-12';


-- 拼多多_商家后台_订单明细日数据
select * from sales_pdd_ht_order_details_dly;
select data_date,count(1) from sales_pdd_ht_order_details_dly group by data_date;

-- 拼多多_商家后台_退款明细日数据
select * from sales_pdd_ht_after_sales_details_dly;
select data_date,count(1) from sales_pdd_ht_after_sales_details_dly group by data_date;


-- 拼多多_商家后台_商品推广明细日数据
select * from sales_pdd_ht_goods_promotion_details_dly;
select data_date,count(1) from sales_pdd_ht_goods_promotion_details_dly group by data_date;


-- 拼多多_商家后台_推广效果明细日数据
select * from sales_pdd_ht_promotion_effect_details_dly;
select data_date,count(1) from sales_pdd_ht_promotion_effect_details_dly group by data_date;


-- 抖音_后台_订单明细日数据
select  data_date,count(1) from sales_dy_ht_order_details_dly group by data_date;

-- 抖音_后台_退款明细日数据
select * from sales_dy_ht_refund_details_dly;
select data_date,count(1) from sales_dy_ht_refund_details_dly group by data_date;

-- 抖音_巨量引擎_全域推广费数据
select * from sales_dy_jlyq_universe_promotion_fee_details_dly;
select data_date,count(1) from sales_dy_jlyq_universe_promotion_fee_details_dly where catch_path = '推直播间' group by data_date;

-- 抖音_巨量引擎_标准推广费数据
select * from sales_dy_jlyq_standard_promotion_fee_details_dly where data_date = '2025-05-22';
select data_date,count(1) from sales_dy_jlyq_standard_promotion_fee_details_dly group by data_date;