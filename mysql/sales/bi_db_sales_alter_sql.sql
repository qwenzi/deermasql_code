-- 抖音_后台_订单明细日数据 2025/06/22
ALTER TABLE sales_dy_ht_order_details_dly ADD SN VARCHAR(255) COMMENT '序列号';

ALTER TABLE sales_dy_ht_order_details_dly
ADD COLUMN is_fudai_order VARCHAR(255) COMMENT '是否福袋订单',
ADD COLUMN fudai_order_no VARCHAR(255) COMMENT '福袋采购订单号',
ADD COLUMN fudai_order_status VARCHAR(255) COMMENT '福袋采购订单状态',
ADD COLUMN fudai_buyer_id VARCHAR(255) COMMENT '福袋采购订单采购方ID',
ADD COLUMN fudai_buyer_name VARCHAR(255) COMMENT '福袋采购订单采购方名称',
ADD COLUMN fudai_create_time VARCHAR(255) COMMENT '福袋采购订单创建时间',
ADD COLUMN fudai_pay_time VARCHAR(255) COMMENT '福袋采购订单支付时间',
ADD COLUMN fudai_payable_amount VARCHAR(64) COMMENT '福袋采购订单订单应付金额',
ADD COLUMN fudai_actual_amount VARCHAR(64) COMMENT '福袋采购订单订单实际付款金额',
ADD COLUMN fudai_discount_amount VARCHAR(64) COMMENT '福袋采购订单订单优惠金额',
ADD COLUMN fudai_product_id VARCHAR(255) COMMENT '福袋采购订单商品ID',
ADD COLUMN fudai_product_name VARCHAR(255) COMMENT '福袋采购订单商品名称',
ADD COLUMN fudai_product_price VARCHAR(255) COMMENT '福袋采购订单商品单价',
ADD COLUMN fudai_product_quantity VARCHAR(64) COMMENT '福袋采购订单商品数量',
ADD COLUMN fudai_used_quantity VARCHAR(64)   COMMENT '福袋采购订单核销数量',
ADD COLUMN fudai_settled_quantity VARCHAR(64) COMMENT '福袋采购订单结算数量';
-- 移动列字段位置
alter table sales_dy_ht_order_details_dly
    modify SN varchar(255) null comment '序列号' after warehouse_name;




-- 抖音_巨量引擎_全域推广费数据 2025/06/25
ALTER TABLE sales_dy_jlyq_universe_promotion_fee_details_dly
# ADD COLUMN account_tag VARCHAR(512) COMMENT '账户标签',
# ADD COLUMN account_budget VARCHAR(255) COMMENT '账户预算',
# ADD COLUMN remark VARCHAR(1024) COMMENT '备注',
# ADD COLUMN user_role VARCHAR(255) COMMENT '我的角色',
# ADD COLUMN account_status VARCHAR(255) COMMENT '账户状态',
# ADD COLUMN general_balance VARCHAR(64) COMMENT '通用余额',
# ADD COLUMN available_balance VARCHAR(64) COMMENT '通用可用余额',
# ADD COLUMN bid_grant_balance VARCHAR(64) COMMENT '竞价赠款余额',
# ADD COLUMN bid_non_grant_balance VARCHAR(64) COMMENT '竞价非赠款余额',
# ADD COLUMN total_unsettled_advance_order_amt VARCHAR(64) COMMENT '整体未完结预售订单预估金额',
# ADD COLUMN total_coupon_used_amt VARCHAR(64) COMMENT '整体成交智能优惠券金额',
# ADD COLUMN plan_name VARCHAR(255) COMMENT '计划名称',
# ADD COLUMN plan_id VARCHAR(255) COMMENT '计划ID',
# ADD COLUMN douyin_account_name VARCHAR(255) COMMENT '抖音号名称',
# ADD COLUMN douyin_account_id VARCHAR(255) COMMENT '抖音号ID',
# ADD COLUMN product_info VARCHAR(1024) COMMENT '商品信息',
ADD COLUMN E_commerce_platform_subsidy_funds VARCHAR(255) COMMENT '电商平台补贴金额';


