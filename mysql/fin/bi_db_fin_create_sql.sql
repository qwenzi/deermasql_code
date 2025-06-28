-- 天猫自营_商家平台_收入和账单类费用
# drop table if exists fin_tm_ht_income_bills_cost_dly;
CREATE TABLE fin_tm_ht_income_bills_cost_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '自增主键ID',
    sn VARCHAR(64) COMMENT '序号',
    data_date VARCHAR(20) COMMENT '数据日期',
    data_get_datetime VARCHAR(20) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    entry_date VARCHAR(20) COMMENT '入账时间',
    alipay_trade_no VARCHAR(64) COMMENT '支付宝交易号',
    alipay_serial_no VARCHAR(64) COMMENT '支付宝流水号',
    merchant_order_no VARCHAR(64) COMMENT  '商户订单号',
    finance_type VARCHAR(20) COMMENT '财务类型',
    income VARCHAR(20) COMMENT '收入（+元）',
    expenses VARCHAR(20) COMMENT '支出（-元）',
    balance VARCHAR(20) COMMENT '账户余额（元）',
    service_fee VARCHAR(20) COMMENT '服务费（元）',
    pay_channel VARCHAR(50) COMMENT '支付渠道',
    sign_product VARCHAR(50) COMMENT '签约产品',
    opposite_account VARCHAR(50) COMMENT '对方账户',
    opposite_name VARCHAR(100) COMMENT '对方名称',
    bank_order_no VARCHAR(64) COMMENT '银行订单号',
    product_name VARCHAR(100) COMMENT '商品名称',
    remark VARCHAR(1000) COMMENT '备注',
    business_basic_order_no VARCHAR(255) COMMENT '业务基础订单号',
    business_order_no VARCHAR(500) COMMENT '业务订单号',
    business_bills_source VARCHAR(255) COMMENT '业务账单来源',
    business_description VARCHAR(255) COMMENT '业务描述',
    payment_remark VARCHAR(500) COMMENT '付款备注',

    -- 索引建议保留
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '天猫自营_商家平台_收入和账单类费用';


-- 天猫自营_万相台费用
# drop table if exists fin_tm_wxt_recharge_cost_dly;
CREATE TABLE fin_tm_wxt_recharge_cost_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '自增主键ID',
    data_date VARCHAR(20) COMMENT '数据日期',
    data_get_datetime VARCHAR(20) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    accounting_time VARCHAR(20) COMMENT '记账时间',
    trade_date VARCHAR(20) COMMENT '交易日期',
    income_expense_type VARCHAR(20) COMMENT '收支类型',
    trade_type VARCHAR(20) COMMENT '交易类型',
    operation_amount VARCHAR(20) COMMENT '操作金额(元)',
    after_operation_balance VARCHAR(20) COMMENT '操作后余额(元)',
    remark VARCHAR(2555) COMMENT '备注',
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '天猫自营_万相台费用';


-- 天猫自营_巨量引擎CID费用
# drop table if exists fin_tm_cid_recharge_cost_dly;
CREATE TABLE fin_tm_cid_recharge_cost_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    organization_id VARCHAR(64) COMMENT '组织ID',
    organization_name VARCHAR(64) COMMENT '组织名称',
    account VARCHAR(255) COMMENT '账户',
    account_id VARCHAR(255) COMMENT '账户id',
    account_label VARCHAR(255) COMMENT '账户标签',
    account_status VARCHAR(255) COMMENT '账户状态',
    account_budget VARCHAR(255) COMMENT '账户预算',
    remark VARCHAR(255) COMMENT '备注',
    account_balance VARCHAR(255) COMMENT '账户余额',
    shared_grant_balance VARCHAR(255) COMMENT '共享赠款余额',
    account_available_balance VARCHAR(255) COMMENT '账户可用余额',
    conversion_num VARCHAR(255) COMMENT '转化数',
    transform_cost VARCHAR(255) COMMENT '转化成本',
    transform_rate VARCHAR(255) COMMENT '转化率(%)',
    depth_transform_num VARCHAR(255) COMMENT '深度转化次数',
    depth_transform_cost VARCHAR(255) COMMENT '深度转化成本',
    depth_transform_rate VARCHAR(255) COMMENT '深度转化率(%)',
    consume VARCHAR(255) COMMENT '消耗',
    display_num VARCHAR(255) COMMENT '展示数',
    avg_cpm VARCHAR(255) COMMENT '平均千次展现费用(元)',
    click_num VARCHAR(255) COMMENT '点击数',
    click_rate VARCHAR(255) COMMENT '点击率(%)',
    avg_click_price VARCHAR(255) COMMENT '平均点击单价(元)',
    grant_consume VARCHAR(255) COMMENT '赠款消耗',
    cash_consume VARCHAR(255) COMMENT '现金消耗',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(organization_id),
    INDEX idx_store_name(organization_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '天猫自营_巨量引擎CID费用';


-- 天猫自营_天猫优品_账单类费用
drop table if exists fin_tm_tmyp_bills_cost_dly;
CREATE TABLE fin_tm_tmyp_bills_cost_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '自增主键ID',
    data_date VARCHAR(20) COMMENT '数据日期',
    data_get_datetime VARCHAR(20) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    statement_no VARCHAR(64) COMMENT '对账单号',
    settlement_entity VARCHAR(128) COMMENT '结算公司主体',
    generated_time VARCHAR(32) COMMENT '账单生成时间',
    main_transaction VARCHAR(64) COMMENT '交易主单',
    sub_transaction VARCHAR(64) COMMENT '交易子单',
    business_main_code VARCHAR(128) COMMENT '业务主单据编码',
    business_sub_code VARCHAR(128) COMMENT '业务子单据编码',
    payment_time VARCHAR(32) COMMENT '支付时间',
    business_time VARCHAR(32) COMMENT '业务时间',
    doc_type VARCHAR(64) COMMENT '业务单据类型',
    fee_type VARCHAR(64) COMMENT '费用类型',
    operation_attribute VARCHAR(64) COMMENT '经营属性',
    settlement_method VARCHAR(64) COMMENT '结算方式',
    supplier_code VARCHAR(64) COMMENT '供应商编码',
    supplier_name VARCHAR(128) COMMENT '供应商名称',
    currency VARCHAR(8) COMMENT '结算币种',
    amount_with_tax VARCHAR(32) COMMENT '含税金额',
    amount_without_tax VARCHAR(32) COMMENT '未税金额',
    tax_amount VARCHAR(32) COMMENT '税额',
    tax_rate VARCHAR(8) COMMENT '税率',
    product_code VARCHAR(64) COMMENT '货品编码',
    product_name VARCHAR(128) COMMENT '后端商品名称',
    storage_unit VARCHAR(32) COMMENT '存储单位',
    charge_quantity VARCHAR(32) COMMENT '计费数量',
    unit_price_with_tax VARCHAR(32) COMMENT '含税单价',
    unit_price_without_tax VARCHAR(32) COMMENT '未税单价',
    recalculation_flag VARCHAR(4) COMMENT '是否重算',
    reference VARCHAR(128) COMMENT '参考',
    unique_id VARCHAR(64) COMMENT '唯一ID',
    discrepancy_type VARCHAR(64) COMMENT '差异判责类型',
    statement_category VARCHAR(64) COMMENT '账单分类',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '天猫自营_天猫优品_账单类费用';

-- 天猫自营_天猫超市_账单类费用
drop table if exists fin_tm_tmcs_bills_cost_dly;
CREATE TABLE fin_tm_tmcs_bills_cost_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '自增主键ID',
    data_date VARCHAR(20) COMMENT '数据日期',
    data_get_datetime VARCHAR(20) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(255) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    statement_no VARCHAR(255) COMMENT '对账单号',
    generate_time VARCHAR(255) COMMENT '账单生成时间',
    main_biz_code VARCHAR(255) COMMENT '业务主单据编码',
    sub_biz_code VARCHAR(255) COMMENT '业务子单据编码',
    main_trade_no VARCHAR(255) COMMENT '交易主单',
    sub_trade_no VARCHAR(255) COMMENT '交易子单',
    pay_time VARCHAR(64) COMMENT '支付时间',
    biz_time VARCHAR(64) COMMENT '业务时间',
    biz_doc_type VARCHAR(64) COMMENT '业务单据类型',
    fee_type VARCHAR(64) COMMENT '费用类型',
    invoice_dir VARCHAR(64) COMMENT '发票方向',
    merchant_code VARCHAR(64) COMMENT '商家编码',
    merchant_name VARCHAR(128) COMMENT '商家名称',
    contract_code VARCHAR(64) COMMENT '合同编码',
    contract_ver VARCHAR(64) COMMENT '合同版本',
    settle_currency VARCHAR(64) COMMENT '结算币种',
    tax_amount VARCHAR(64) COMMENT '含税金额',
    untaxed_amount VARCHAR(32) COMMENT '未税金额',
    tax_value VARCHAR(64) COMMENT '税额',
    tax_rate VARCHAR(64) COMMENT '税率',
    backend_sku VARCHAR(64) COMMENT '后端商品编码',
    backend_item VARCHAR(128) COMMENT '后端商品名称',
    front_sku VARCHAR(255) COMMENT '前端商品编码',
    front_item VARCHAR(128) COMMENT '前端商品名称',
    storage_unit VARCHAR(64) COMMENT '存储单位',
    quantity VARCHAR(64) COMMENT '商品数量',
    unit_tax_price VARCHAR(64) COMMENT '含税单价',
    unit_untax_price VARCHAR(64) COMMENT '未税单价',
    recalculated_flag VARCHAR(64) COMMENT '是否重算',
    reference VARCHAR(255) COMMENT '参考',
    unique_id VARCHAR(255) COMMENT '唯一ID',
    settle_serial VARCHAR(255) COMMENT '结算流水编号',
    shop_name VARCHAR(255) COMMENT '门店名称',
    fee_desc VARCHAR(255) COMMENT '费用说明',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '天猫自营_天猫超市_账单类费用';

-- 天猫自营_阿里妈妈_充值类费用
drop table if exists fin_tm_almm_recharge_cost_dly;
CREATE TABLE fin_tm_almm_recharge_cost_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '自增主键ID',
    data_date VARCHAR(20) COMMENT '数据日期',
    data_get_datetime VARCHAR(20) COMMENT '数据流入时间',
    login_account VARCHAR(255) COMMENT '登入账号',
    store_id VARCHAR(255) COMMENT '店铺ID',
    store_name VARCHAR(255) COMMENT '店铺名称',
    stat_date VARCHAR(100) COMMENT '日期',
    brand VARCHAR(255) COMMENT '品牌',
    ad_account_id VARCHAR(255) COMMENT '投放账户ID',
    ad_account_name VARCHAR(255) COMMENT '投放账户名称',
    total_cost VARCHAR(255) COMMENT '总消耗',
    cash_cost VARCHAR(255) COMMENT '现金消耗',
    voucher_cost VARCHAR(255) COMMENT '代金券消耗',
    compensation_cost VARCHAR(255) COMMENT '赔付赠款消耗',
    total_transfer_in VARCHAR(255) COMMENT '总转入',
    total_transfer_out VARCHAR(255) COMMENT '总转出',
    compensation_in VARCHAR(255) COMMENT '赔付赠款总入账',
    voucher_in VARCHAR(255) COMMENT '代金券总入账',
    voucher_expired VARCHAR(255) COMMENT '代金券过期',
    daily_balance VARCHAR(255) COMMENT '日终结余总额',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '天猫自营_阿里妈妈_充值类费用';





-- 京东自营_精准通充值类费用
# drop table if exists fin_jd_jzt_recharge_cost_dly;
CREATE TABLE fin_jd_jzt_recharge_cost_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    sn VARCHAR(255) COMMENT '流水单号',
    account VARCHAR(255) COMMENT '账号',
    trade_date VARCHAR(255) COMMENT '投放日期',
    trade_type VARCHAR(255) COMMENT '交易类型',
    expenses VARCHAR(255) COMMENT '支出',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '京东自营_精准通充值类费用';



-- 抖音自营_抖店_结算账单类费用
# drop table if exists fin_dy_dd_settle_bills_cost_dly;
CREATE TABLE fin_dy_dd_settle_bills_cost_dly(
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(32) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    settlement_datetime VARCHAR(32) COMMENT '结算时间',
    order_id VARCHAR(32) COMMENT '订单号',
    sub_order_id VARCHAR(32) COMMENT '子订单号',
    settlement_amount VARCHAR(20) COMMENT '结算金额',
    settlement_account VARCHAR(100) COMMENT '结算账户',
    settlement_type VARCHAR(50) COMMENT '结算单类型',
    has_pre_settlement_refund VARCHAR(3) COMMENT '有结算前退款',
    order_time VARCHAR(20) COMMENT '下单时间',
    product_id VARCHAR(32) COMMENT '商品ID',
    product_name VARCHAR(512) COMMENT '商品名称',
    product_quantity VARCHAR(10) COMMENT '商品数量',
    talent_id VARCHAR(32) COMMENT '达人ID',
    talent_name VARCHAR(100) COMMENT '达人名称',
    business_type VARCHAR(50) COMMENT '业务类型',
    order_type VARCHAR(50) COMMENT '订单类型',
    total_order_amount VARCHAR(20) COMMENT '订单总价',
    total_product_amount VARCHAR(20) COMMENT '商品总价',
    shipping_fee VARCHAR(10) COMMENT '运费',
    store_coupon VARCHAR(20) COMMENT '店铺劵',
    government_subsidy_merchant VARCHAR(20) COMMENT '政府补贴商家垫资',
    pre_settlement_refund_amount VARCHAR(20) COMMENT '结算前退款金额',
    platform_subsidy VARCHAR(20) COMMENT '平台补贴',
    other_platform_subsidy VARCHAR(20) COMMENT '其他平台补贴',
    government_subsidy_platform VARCHAR(20) COMMENT '政府补贴平台垫资',
    talent_subsidy VARCHAR(20) COMMENT '达人补贴',
    tiktok_pay_subsidy VARCHAR(20) COMMENT '抖音支付补贴',
    tiktok_installment_subsidy VARCHAR(20) COMMENT '抖音月付营销补贴',
    bank_subsidy VARCHAR(20) COMMENT '银行补贴',
    trade_in_discount VARCHAR(20) COMMENT '以旧换新抵扣',
    platform_shipping_subsidy VARCHAR(20) COMMENT '平台补贴运费',
    user_payment VARCHAR(20) COMMENT '用户实付',
    total_income VARCHAR(20) COMMENT '收入合计',
    platform_service_fee VARCHAR(20) COMMENT '平台服务费',
    talent_commission VARCHAR(20) COMMENT '达人佣金',
    service_provider_commission VARCHAR(20) COMMENT '服务商佣金',
    channel_share VARCHAR(20) COMMENT '渠道分成',
    investment_service_fee VARCHAR(20) COMMENT '招商服务费',
    external_promotion_fee VARCHAR(20) COMMENT '站外推广费',
    other_share VARCHAR(20) COMMENT '其他分成',
    other_share_description VARCHAR(255) COMMENT '其他分成说明',
    total_expenditure VARCHAR(20) COMMENT '支出合计',
    is_commission_free VARCHAR(32) COMMENT '是否免佣',
    commission_free_amount VARCHAR(20) COMMENT '免佣金额',
    remark VARCHAR(255) COMMENT '备注',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '抖音自营_抖店_结算账单类费用';


-- 抖音自营_抖店_资金账单类费用
# drop table if exists fin_dy_dd_funds_bills_cost_dly;
CREATE TABLE fin_dy_dd_funds_bills_cost_dly(
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(32) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    transaction_datetime VARCHAR(20)  COMMENT '动账时间',
    transaction_serial_no VARCHAR(64)  COMMENT '动帐流水号',
    transaction_direction VARCHAR(10)  COMMENT '动账方向',
    transaction_amount VARCHAR(20)  COMMENT '动账金额',
    transaction_account VARCHAR(64) COMMENT '动账账户',
    transaction_scene VARCHAR(128) COMMENT '动账场景',
    billing_type VARCHAR(32) COMMENT '计费类型',
    sub_order_id VARCHAR(64) COMMENT '子订单号',
    order_id VARCHAR(64)  COMMENT '订单号',
    after_sale_id VARCHAR(64) COMMENT '售后编号',
    order_time VARCHAR(20) COMMENT '下单时间',
    product_id VARCHAR(32) COMMENT '商品ID',
    product_name VARCHAR(512) COMMENT '商品名称',
    influencer_id VARCHAR(32) COMMENT '达人ID',
    influencer_name VARCHAR(64) COMMENT '达人名称',
    order_type VARCHAR(32) COMMENT '订单类型',
    order_payment VARCHAR(20) COMMENT '订单实付应结',
    freight_payment VARCHAR(20) COMMENT '运费实付',
    platform_freight_subsidy VARCHAR(20) COMMENT '实际平台补贴_运费',
    platform_subsidy VARCHAR(20) COMMENT '实际平台补贴',
    other_platform_subsidy VARCHAR(20) COMMENT '其他平台补贴',
    trade_in_discount VARCHAR(20) COMMENT '以旧换新抵扣',
    government_subsidy VARCHAR(20) COMMENT '政府补贴平台垫资',
    influencer_subsidy VARCHAR(20) COMMENT '实际达人补贴',
    dy_pay_subsidy VARCHAR(20) COMMENT '实际抖音支付补贴',
    dy_monthly_subsidy VARCHAR(20) COMMENT '实际抖音月付营销补贴',
    bank_subsidy VARCHAR(20) COMMENT '银行补贴',
    order_refund VARCHAR(20) COMMENT '订单退款',
    platform_fee VARCHAR(20) COMMENT '平台服务费',
    commission VARCHAR(20) COMMENT '佣金',
    service_provider_commission VARCHAR(20) COMMENT '服务商佣金',
    channel_share VARCHAR(20) COMMENT '渠道分成',
    merchant_service_fee VARCHAR(20) COMMENT '招商服务费',
    external_promotion_fee VARCHAR(20) COMMENT '站外推广费',
    other_share VARCHAR(20) COMMENT '其他分成',
    is_commission_free VARCHAR(32) COMMENT '是否免佣',
    free_commission_amount VARCHAR(20) COMMENT '免佣金额',
    remark VARCHAR(1024) COMMENT '备注',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '抖音自营_抖店_资金账单类费用';


-- 抖音自营_巨量千川_充值类费用
# drop table if exists fin_dy_jlqc_recharge_cost_dly;
CREATE TABLE fin_dy_jlqc_recharge_cost_dly(
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    account_id VARCHAR(32) COMMENT '账号ID',
    account_name VARCHAR(32) COMMENT '账号名称',
    record_date VARCHAR(20) COMMENT '日期',
    total_balance_consumption VARCHAR(20) COMMENT '余额总消耗(元)',
    non_grant_consumption VARCHAR(20) COMMENT '非赠款消耗(元)',
    grant_consumption VARCHAR(20) COMMENT '赠款消耗(元)',
    cashback_redpacket_consumption VARCHAR(30) COMMENT '消返红包消耗(元)',
    instant_discount_redpacket_consumption VARCHAR(30) COMMENT '立减红包消耗(元)',
    shared_wallet_consumption VARCHAR(30) COMMENT '共享钱包消耗(元)',
    shared_grant_consumption VARCHAR(30) COMMENT '共享赠款消耗(元)',
    total_deposit VARCHAR(20) COMMENT '总存入(元)',
    total_transfer_in VARCHAR(20) COMMENT '总转入(元)',
    total_transfer_out VARCHAR(20) COMMENT '总转出(元)',
    total_balance VARCHAR(20) COMMENT '总余额(元)',
    grant_balance VARCHAR(20) COMMENT '赠款余额(元)',
    non_grant_balance VARCHAR(20) COMMENT '非赠款余额(元)',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(account_id),
    INDEX idx_store_name(account_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '抖音自营_抖店_资金账单类费用';


-- 拼多多_商家后台_收入和账单类费用
# drop table if exists fin_pdd_ht_income_bills_cost_dly;
CREATE TABLE fin_pdd_ht_income_bills_cost_dly(
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(32) COMMENT '店铺ID',
    store_name VARCHAR(32) COMMENT '店铺名称',
    merchant_order_no VARCHAR(32) COMMENT '商户订单号',
    record_date VARCHAR(32) COMMENT '发生时间',
    income VARCHAR(32) COMMENT '收入金额（+元）',
    expenses VARCHAR(32) COMMENT '支出金额（-元）',
    finance_type VARCHAR(32) COMMENT '账务类型',
    remark VARCHAR(1024) COMMENT '备注',
    business_description VARCHAR(1024) COMMENT '业务描述',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '拼多多_商家后台_收入和账单类费用';

-- 拼多多_商家后台_充值类费用
# drop table if exists fin_pdd_ht_recharge_cost_dly;
CREATE TABLE fin_pdd_ht_recharge_cost_dly(
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(32) COMMENT '店铺ID',
    store_name VARCHAR(32) COMMENT '店铺名称',
    record_date VARCHAR(32) COMMENT '时间',
    funds_type VARCHAR(32) COMMENT '资金类型',
    serial_type VARCHAR(32) COMMENT '流水类型',
    is_count_in VARCHAR(32) COMMENT '是否计入',
    shop_name VARCHAR(32) COMMENT '店铺名称',
    trade_amount VARCHAR(32) COMMENT '交易金额',
    balance VARCHAR(32) COMMENT '余额',
    trade_abstract VARCHAR(1024) COMMENT '交易摘要',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '拼多多_商家后台_充值类费用';



-- 京东POP_京东金融_收入和账单类费用
# drop table if exists fin_jdpop_jdfinance_income_bills_cost_dly;
CREATE TABLE fin_jdpop_jdfinance_income_bills_cost_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    merchant_no VARCHAR(255) COMMENT '商户号',
    account_id VARCHAR(255) COMMENT '账户代码',
    account_name VARCHAR(255) COMMENT '账户名称',
    datetime VARCHAR(255) COMMENT '日期',
    merchant_order_no VARCHAR(255) COMMENT '商户订单号',
    balance VARCHAR(255) COMMENT '账户余额（元）',
    income VARCHAR(255) COMMENT '收入金额(元)',
    expenses VARCHAR(255) COMMENT '支出金额(元)',
    trade_remark VARCHAR(512) COMMENT '交易备注',
    bills_datetime VARCHAR(64) COMMENT '账单日期',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '京东POP_京东金融_收入和账单类费用';


-- 京东POP_精准通_充值类费用
# drop table if exists fin_jdpop_jzt_recharge_cost_dly;
CREATE TABLE fin_jdpop_jzt_recharge_cost_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    sn VARCHAR(255) COMMENT '流水单号',
    account VARCHAR(255) COMMENT '账号',
    trade_date VARCHAR(255) COMMENT '投放日期',
    trade_type VARCHAR(255) COMMENT '交易类型',
    expenses VARCHAR(255) COMMENT '支出',
    settlement_datetime VARCHAR(255) COMMENT '结算时间',
    balance VARCHAR(255) COMMENT '结余',
    invoice_method VARCHAR(255) COMMENT '开票方式',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '京东POP_精准通_充值类费用';



# 小平台===============================================================================================================================================================================================================================
-- 得物_商家后台_销售订单
# drop table if exists fin_dw_ht_sale_detail_dly;
CREATE TABLE fin_dw_ht_sale_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    order_id VARCHAR(20) COMMENT '订单号',
    order_type VARCHAR(20) COMMENT '订单类型',
    product_name VARCHAR(100) COMMENT '商品名称',
    product_code VARCHAR(255) COMMENT '商品货号',
    quantity VARCHAR(10) COMMENT '数量',
    specs VARCHAR(50) COMMENT '规格',
    reservation_no VARCHAR(20) COMMENT '预约单号',
    product_amount VARCHAR(15) COMMENT '商品金额',
    co_marketing_fee VARCHAR(15) COMMENT '联合营销费',
    promotion_price VARCHAR(15) COMMENT '限时折扣/定金预售报名价',
    trans_amount VARCHAR(15) COMMENT '商品交易金额',
    bid_time VARCHAR(20) COMMENT '出价时间',
    create_time VARCHAR(20) COMMENT '订单创建时间',
    pay_time VARCHAR(20) COMMENT '支付时间',
    ship_time VARCHAR(20) COMMENT '发货时间',
    is_joined_activity VARCHAR(5) COMMENT '是否参加活动',
    activity_fee_rate VARCHAR(10) COMMENT '活动费率',
    fee_activity_id VARCHAR(20) COMMENT '费率活动ID',
    applicable_rate VARCHAR(10) COMMENT '适用费率',
    fee_rate_min VARCHAR(10) COMMENT '费率下限',
    fee_rate_max VARCHAR(10) COMMENT '费率上限',
    discount_rate VARCHAR(10) COMMENT '优惠①:费率折扣',
    service_discount VARCHAR(10) COMMENT '服务分费率折扣',
    discount_amount VARCHAR(15) COMMENT '费率折扣优惠额',
    task_discount VARCHAR(10) COMMENT '任务达成折扣',
    task_discount_amount VARCHAR(15) COMMENT '任务达成折扣对应优惠额',
    service_rebate VARCHAR(15) COMMENT '其中-服务费返利折扣金额',
    tech_fee_coupon VARCHAR(15) COMMENT '优惠②.技术服务费券',
    service_rebate_deduct VARCHAR(15) COMMENT '优惠③服务费返利减免金额',
    total_service_fee VARCHAR(15) COMMENT '合计平台服务费金额(已扣减优惠①②③)',
    merchant_rebate VARCHAR(15) COMMENT '商家返利',
    final_base_fee VARCHAR(15) COMMENT '最终平台基础服务费',
    base_fee_amount VARCHAR(15) COMMENT '其中:基础服务费金额',
    fulfillment_fee VARCHAR(15) COMMENT '其中:履约服务费金额',
    is_joined_promotion VARCHAR(5) COMMENT '是否参加活动',
    promo_fee_rate VARCHAR(10) COMMENT '活动费率',
    promo_fee_id VARCHAR(20) COMMENT '费率活动ID',
    tech_service_rate VARCHAR(10) COMMENT '技术服务费费率',
    tech_fee_min VARCHAR(10) COMMENT '费率下限',
    tech_fee_max VARCHAR(10) COMMENT '费率上限',
    tech_discount_rate VARCHAR(10) COMMENT '优惠①:费率折扣',
    tech_service_discount VARCHAR(10) COMMENT '服务分费率折扣',
    tech_discount_amount VARCHAR(15) COMMENT '费率折扣优惠额',
    tech_task_discount VARCHAR(10) COMMENT '任务达成折扣',
    tech_task_discount_amt VARCHAR(15) COMMENT '任务达成折扣对应优惠额',
    tech_rebate_deduct VARCHAR(15) COMMENT '其中-服务费返利折扣金额',
    tech_tech_fee_coupon VARCHAR(15) COMMENT '优惠②.技术服务费券',
    tech_rebate_reduction VARCHAR(15) COMMENT '优惠③服务费返利减免金额',
    total_tech_fee VARCHAR(15) COMMENT '技术服务费(已扣减优惠①②③)',
    merchant_tech_rebate VARCHAR(15) COMMENT '商家返利',
    total_tech_service_fee VARCHAR(15) COMMENT '合计技术服务费',
    op_service_fee VARCHAR(15) COMMENT '操作服务费',
    dustbag_fee VARCHAR(15) COMMENT '包含防尘袋包装费',
    giftbox_fee VARCHAR(15) COMMENT '包含礼盒费',
    giftbag_fee VARCHAR(15) COMMENT '包含礼袋费',
    inspection_fee VARCHAR(15) COMMENT '查验费',
    auth_fee VARCHAR(15) COMMENT '鉴别费',
    packaging_fee VARCHAR(15) COMMENT '包装服务费',
    transfer_fee VARCHAR(15) COMMENT '转账手续费',
    brand_service_fee VARCHAR(15) COMMENT '品牌服务费',
    cs_hosting_fee VARCHAR(15) COMMENT '客服托管服务费',
    after_sale_fee VARCHAR(15) COMMENT '售后无忧服务费',
    export_promotion_fee VARCHAR(15) COMMENT '出口推广服务费',
    return_shipping_fee VARCHAR(15) COMMENT '卖家退运服务费',
    distribution_fee VARCHAR(15) COMMENT '分销服务费金额',
    dist_rule_type VARCHAR(20) COMMENT '分销规则类型',
    dist_rule_id VARCHAR(20) COMMENT '分销规则ID',
    total_platform_fee VARCHAR(15) COMMENT '合计平台服务费',
    prepay_recovery VARCHAR(15) COMMENT '平台预付款收回金额',
    trade_in_subsidy VARCHAR(15) COMMENT '以旧换新补贴金额',
    seller_shipping VARCHAR(15) COMMENT '卖家承担包邮金额',
    buyer_shipping_subsidy VARCHAR(15) COMMENT '消费者邮费补贴金额',
    seller_coupon VARCHAR(15) COMMENT '卖家承担优惠券金额',
    seller_discount VARCHAR(15) COMMENT '卖家承担折扣活动金额',
    interest_free_subsidy VARCHAR(15) COMMENT '分期免息卖家承担金额',
    mid_sale_refund VARCHAR(15) COMMENT '售中降价(退款)',
    mid_sale_allowance VARCHAR(15) COMMENT '售中降价(退津贴)',
    adjustment_amt VARCHAR(15) COMMENT '调整金额',
    settlement_amt VARCHAR(15) COMMENT '应结金额',
    settlement_status VARCHAR(20) COMMENT '结算状态',
    settlement_channel VARCHAR(20) COMMENT '结算渠道',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '得物_商家后台_销售订单';

-- 得物_商家后台_退货退款订单
# drop table if exists fin_dw_ht_return_refund_detail_dly;
CREATE TABLE fin_dw_ht_return_refund_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    order_id VARCHAR(20) COMMENT '订单号',
    return_id VARCHAR(20) COMMENT '退货订单号',
    return_create_time VARCHAR(20) COMMENT '退货创建时间',
    billing_period VARCHAR(30) COMMENT '退货订单账单起止时间',
    order_type VARCHAR(20) COMMENT '订单类型',
    product_name VARCHAR(100) COMMENT '商品名称',
    product_code VARCHAR(255) COMMENT '商品货号',
    quantity VARCHAR(10) COMMENT '数量',
    specs VARCHAR(50) COMMENT '规格',
    reservation_no VARCHAR(20) COMMENT '预约单号',
    product_amount VARCHAR(15) COMMENT '商品金额',
    co_marketing_fee VARCHAR(15) COMMENT '联合营销费',
    promo_price VARCHAR(15) COMMENT '限时折扣/定金预售报名价',
    trans_amount VARCHAR(15) COMMENT '商品交易金额',
    bid_time VARCHAR(20) COMMENT '出价时间',
    create_time VARCHAR(20) COMMENT '订单创建时间',
    pay_time VARCHAR(20) COMMENT '支付时间',
    ship_time VARCHAR(20) COMMENT '发货时间',
    is_activity VARCHAR(5) COMMENT '是否参加活动',
    activity_rate VARCHAR(10) COMMENT '活动费率',
    rate_activity_id VARCHAR(20) COMMENT '费率活动ID',
    applicable_rate VARCHAR(10) COMMENT '适用费率',
    rate_min VARCHAR(10) COMMENT '费率下限',
    rate_max VARCHAR(10) COMMENT '费率上限',
    discount_rate VARCHAR(10) COMMENT '优惠①:费率折扣',
    service_discount VARCHAR(10) COMMENT '服务分费率折扣',
    discount_amt VARCHAR(15) COMMENT '费率折扣优惠额',
    task_discount VARCHAR(10) COMMENT '任务达成折扣',
    task_discount_amt VARCHAR(15) COMMENT '任务达成折扣对应优惠额',
    rebate_deduct VARCHAR(15) COMMENT '其中-服务费返利折扣金额',
    tech_coupon VARCHAR(15) COMMENT '优惠②.技术服务费券',
    rebate_reduction VARCHAR(15) COMMENT '优惠③服务费返利减免金额',
    total_service_fee VARCHAR(15) COMMENT '合计平台服务费金额(已扣减优惠①②③)',
    merchant_rebate VARCHAR(15) COMMENT '商家返利',
    final_base_fee VARCHAR(15) COMMENT '最终平台基础服务费',
    base_fee VARCHAR(15) COMMENT '其中:基础服务费金额',
    fulfillment_fee VARCHAR(15) COMMENT '其中:履约服务费金额',
    tech_activity_flag VARCHAR(5) COMMENT '是否参加活动',
    tech_activity_rate VARCHAR(10) COMMENT '活动费率',
    tech_rate_id VARCHAR(20) COMMENT '费率活动ID',
    tech_service_rate VARCHAR(10) COMMENT '技术服务费费率',
    tech_rate_min VARCHAR(10) COMMENT '费率下限',
    tech_rate_max VARCHAR(10) COMMENT '费率上限',
    tech_discount_rate VARCHAR(10) COMMENT '优惠①:费率折扣',
    tech_service_discount VARCHAR(10) COMMENT '服务分费率折扣',
    tech_discount_amt VARCHAR(15) COMMENT '费率折扣优惠额',
    tech_task_discount VARCHAR(10) COMMENT '任务达成折扣',
    tech_task_discount_amt VARCHAR(15) COMMENT '任务达成折扣对应优惠额',
    tech_rebate_deduct VARCHAR(15) COMMENT '其中-服务费返利折扣金额',
    tech_fee_coupon VARCHAR(15) COMMENT '优惠②.技术服务费券',
    tech_rebate_reduction VARCHAR(15) COMMENT '优惠③服务费返利减免金额',
    total_tech_fee VARCHAR(15) COMMENT '技术服务费(已扣减优惠①②③)',
    tech_merchant_rebate VARCHAR(15) COMMENT '商家返利',
    total_tech_service VARCHAR(15) COMMENT '合计技术服务费',
    op_fee VARCHAR(15) COMMENT '操作服务费',
    dustbag_fee VARCHAR(15) COMMENT '包含防尘袋包装费',
    giftbox_fee VARCHAR(15) COMMENT '包含礼盒费',
    giftbag_fee VARCHAR(15) COMMENT '包含礼袋费',
    inspection_fee VARCHAR(15) COMMENT '查验费',
    auth_fee VARCHAR(15) COMMENT '鉴别费',
    packaging_fee VARCHAR(15) COMMENT '包装服务费',
    transfer_fee VARCHAR(15) COMMENT '转账手续费',
    cs_hosting_fee VARCHAR(15) COMMENT '客服托管服务费',
    brand_fee VARCHAR(15) COMMENT '品牌服务费',
    total_platform_fee VARCHAR(15) COMMENT '合计平台服务费',
    after_sale_fee VARCHAR(15) COMMENT '售后无忧服务费',
    prepay_recovery VARCHAR(15) COMMENT '平台预付款收回金额',
    trade_in_subsidy VARCHAR(15) COMMENT '以旧换新补贴金额',
    seller_shipping VARCHAR(15) COMMENT '卖家承担包邮金额',
    buyer_shipping_sub VARCHAR(15) COMMENT '消费者邮费补贴金额',
    seller_coupon VARCHAR(15) COMMENT '卖家承担优惠券金额',
    seller_discount VARCHAR(15) COMMENT '卖家承担折扣活动金额',
    interest_free_sub VARCHAR(15) COMMENT '分期免息卖家承担金额',
    mid_sale_refund VARCHAR(15) COMMENT '售中降价(退款)',
    mid_sale_allowance VARCHAR(15) COMMENT '售中降价(退津贴)',
    adjust_amt VARCHAR(15) COMMENT '调整金额',
    settlement_amt VARCHAR(15) COMMENT '应结金额',
    settle_status VARCHAR(20) COMMENT '结算状态',
    payment_term VARCHAR(64) COMMENT '收款账期',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '得物_商家后台_退货退款订单';

-- 得物_商家后台_扣减其他费用明细
drop table if exists fin_dw_ht_others_cost_detail_dly;
CREATE TABLE fin_dw_ht_others_cost_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    payment_id VARCHAR(20) COMMENT '缴款单ID',
    item_name VARCHAR(100) COMMENT '明细费用项',
    biz_code VARCHAR(64) COMMENT '业务编码',
    original_biz_no VARCHAR(64) COMMENT '原业务单号',
    payable_amt VARCHAR(15) COMMENT '应缴金额',
    repay_amt VARCHAR(15) COMMENT '本次偿还金额',
    create_time VARCHAR(64) COMMENT '费用生成时间',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '得物_商家后台_扣减其他费用明细';

-- 得物_商家后台_保证金账户变动明细
# drop table if exists fin_dw_ht_deposit_change_detail_dly;
CREATE TABLE fin_dw_ht_deposit_change_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    deposit_type VARCHAR(20) COMMENT '保证金类型',
    change_type VARCHAR(30) COMMENT '变更类型',
    change_reason VARCHAR(200) COMMENT '变更原因',
    amount VARCHAR(15) COMMENT '变更金额',
    recharge_no VARCHAR(20) COMMENT '充值流水号',
    order_id VARCHAR(20) COMMENT '订单号',
    product_name VARCHAR(100) COMMENT '商品名称',
    product_code VARCHAR(20) COMMENT '货号',
    specs VARCHAR(50) COMMENT '规格',
    price VARCHAR(15) COMMENT '价格',
    change_time VARCHAR(20) COMMENT '变更时间',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '得物_商家后台_保证金账户变动明细';


-- 唯品会_供应商平台_销售明细
# drop table if exists fin_vph_supplier_platform_sale_detail_dly;
CREATE TABLE fin_vph_supplier_platform_sale_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    data_period VARCHAR(20) COMMENT '数据所属期间',
    supplier_id VARCHAR(20) COMMENT '供应商编号',
    supplier_name VARCHAR(50) COMMENT '供应商名称',
    brand_name VARCHAR(30) COMMENT '品牌名称',
    purchase_order_no VARCHAR(30) COMMENT '采购单号',
    original_po_no VARCHAR(30) COMMENT '原采购单号',
    sales_assistant VARCHAR(20) COMMENT '商助',
    sales_order_no VARCHAR(30) COMMENT '销售订单号',
    exchange_ref_no VARCHAR(30) COMMENT '换货参考单号',
    product_code VARCHAR(20) COMMENT '货号',
    barcode VARCHAR(50) COMMENT '条码',
    product_name VARCHAR(100) COMMENT '商品名称',
    settlement_qty VARCHAR(20) COMMENT '结算数量',
    unit_price_excl_tax VARCHAR(20) COMMENT '结算不含税单价',
    unit_price_incl_tax VARCHAR(20) COMMENT '结算含税单价',
    tax_rate VARCHAR(10) COMMENT '税率',
    total_excl_tax VARCHAR(20) COMMENT '结算不含税金额:销售数量*结算不含税单价',
    total_incl_tax VARCHAR(20) COMMENT '结算含税金额:销售数量*结算含税单价',
    currency VARCHAR(3) COMMENT '币种',
    agreement_no VARCHAR(30) COMMENT '协议号',
    price_time VARCHAR(20) COMMENT '价格时间',
    selling_price VARCHAR(10) COMMENT '1-供货价/售价',
    settlement_mode VARCHAR(20) COMMENT '结算模式',
    order_delivery_type VARCHAR(20) COMMENT '订单发货类型',
    jitx_delivery VARCHAR(20) COMMENT 'JITX发货方式',
    warehouse VARCHAR(30) COMMENT '仓库',
    purchase_schedule_id VARCHAR(30) COMMENT '采购档期编号',
    special_event_id VARCHAR(20) COMMENT '专场ID',
    special_event_name VARCHAR(50) COMMENT '专场名称',
    event_price VARCHAR(20) COMMENT '活动到手价',
    event_type VARCHAR(20) COMMENT '活动类型',
    event_name VARCHAR(50) COMMENT '活动名称',
    category VARCHAR(30) COMMENT '栏目',
    is_exchange VARCHAR(5) COMMENT '是否换货',
    exchange_new_settle VARCHAR(5) COMMENT '换货按新单结算',
    is_preorder VARCHAR(5) COMMENT '是否预购',
    tax_code VARCHAR(20) COMMENT '税收编码',
    taxable_goods VARCHAR(100) COMMENT '货物或应税劳务、服务名称',
    third_category VARCHAR(30) COMMENT '三级分类',
    biz_date VARCHAR(20) COMMENT '业务发生日期',
    special_category VARCHAR(30) COMMENT '特殊类别',
    special_order_no VARCHAR(30) COMMENT '特殊类别对应订单号',
    special_purchase_schedule VARCHAR(30) COMMENT '特殊类别对应采购档期',
    repair_flag VARCHAR(5) COMMENT '维修标记',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '唯品会_供应商平台_销售明细';


-- 唯品会_供应商平台_客退明细
# drop table if exists fin_vph_supplier_platform_return_detail_dly;
CREATE TABLE fin_vph_supplier_platform_return_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    data_period VARCHAR(20) COMMENT '数据所属期间',
    supplier_id VARCHAR(20) COMMENT '供应商编号',
    supplier_name VARCHAR(50) COMMENT '供应商名称',
    brand_name VARCHAR(30) COMMENT '品牌名称',
    purchase_order_no VARCHAR(30) COMMENT '采购单号',
    original_po_no VARCHAR(30) COMMENT '原采购单号',
    sales_assistant VARCHAR(20) COMMENT '商助',
    sales_order_no VARCHAR(30) COMMENT '销售订单号',
    exchange_ref_no VARCHAR(30) COMMENT '换货参考单号',
    product_code VARCHAR(20) COMMENT '货号',
    barcode VARCHAR(50) COMMENT '条码',
    product_name VARCHAR(100) COMMENT '商品名称',
    settlement_qty VARCHAR(20) COMMENT '结算数量',
    unit_price_excl_tax VARCHAR(20) COMMENT '结算不含税单价',
    unit_price_incl_tax VARCHAR(20) COMMENT '结算含税单价',
    tax_rate VARCHAR(10) COMMENT '税率',
    total_excl_tax VARCHAR(20) COMMENT '结算不含税金额:销售数量*结算不含税单价',
    total_incl_tax VARCHAR(20) COMMENT '结算含税金额:销售数量*结算含税单价',
    currency VARCHAR(3) COMMENT '币种',
    agreement_no VARCHAR(30) COMMENT '协议号',
    price_time VARCHAR(20) COMMENT '价格时间',
    price_type VARCHAR(10) COMMENT '1-供货价/售价',
    settlement_mode VARCHAR(20) COMMENT '结算模式',
    order_delivery_type VARCHAR(20) COMMENT '订单发货类型',
    jitx_delivery VARCHAR(20) COMMENT 'JITX发货方式',
    warehouse VARCHAR(30) COMMENT '仓库',
    purchase_schedule_id VARCHAR(30) COMMENT '采购档期编号',
    special_event_id VARCHAR(20) COMMENT '专场ID',
    special_event_name VARCHAR(50) COMMENT '专场名称',
    event_price VARCHAR(20) COMMENT '活动到手价',
    event_type VARCHAR(20) COMMENT '活动类型',
    event_name VARCHAR(50) COMMENT '活动名称',
    category VARCHAR(30) COMMENT '栏目',
    is_exchange VARCHAR(5) COMMENT '是否换货',
    exchange_new_settle VARCHAR(5) COMMENT '换货按新单结算',
    is_preorder VARCHAR(5) COMMENT '是否预购',
    direct_return_no VARCHAR(30) COMMENT '直退单号',       -- 新增字段
    after_sale_qty VARCHAR(20) COMMENT '售后申请数量',    -- 新增字段
    unpacked_qty VARCHAR(20) COMMENT '拆包实收数量',      -- 新增字段
    unpacked_barcode VARCHAR(50) COMMENT '拆包实收条码', -- 新增字段
    work_order_no VARCHAR(30) COMMENT '工单号',          -- 新增字段
    liability_party VARCHAR(30) COMMENT '判责认定方',     -- 新增字段
    tax_code VARCHAR(20) COMMENT '税收编码',
    taxable_goods VARCHAR(100) COMMENT '货物或应税劳务、服务名称',
    third_category VARCHAR(30) COMMENT '三级分类',
    biz_date VARCHAR(20) COMMENT '业务发生日期',
    special_category VARCHAR(30) COMMENT '特殊类别',
    special_order_no VARCHAR(30) COMMENT '特殊类别对应订单号',
    special_purchase_schedule VARCHAR(30) COMMENT '特殊类别对应采购档期',
    repair_flag VARCHAR(5) COMMENT '维修标记',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '唯品会_供应商平台_客退明细';



-- 唯品会_供应商平台_活动折扣明细
# drop table if exists fin_vph_supplier_platform_discount_detail_dly;
CREATE TABLE fin_vph_supplier_platform_discount_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    data_period VARCHAR(20) COMMENT '数据所属期间',
    supplier_id VARCHAR(20) COMMENT '供应商编号',
    supplier_name VARCHAR(50) COMMENT '供应商名称',
    brand_name VARCHAR(30) COMMENT '品牌名称',
    purchase_order_no VARCHAR(30) COMMENT '采购单号',
    original_po_no VARCHAR(30) COMMENT '原采购单号',
    sales_order_no VARCHAR(30) COMMENT '销售订单号',
    exchange_ref_no VARCHAR(30) COMMENT '换货参考单号',
    barcode VARCHAR(50) COMMENT '条码',
    quantity VARCHAR(20) COMMENT '数量',
    order_status VARCHAR(20) COMMENT '订单状态',
    supplier_ratio VARCHAR(20) COMMENT '供应商承担比例',
    supplier_qty VARCHAR(20) COMMENT '供应商承担数量',
    total_discount VARCHAR(20) COMMENT '满减总额',
    deductible_amount VARCHAR(20) COMMENT '应扣供应商活动费用金额',
    tax_rate VARCHAR(10) COMMENT '税率',
    currency VARCHAR(3) COMMENT '币种',
    event_type VARCHAR(20) COMMENT '活动类型',
    event_main_id VARCHAR(30) COMMENT '活动主编号',
    promotion_comment VARCHAR(100) COMMENT '优惠活动注释',
    confirmation_no VARCHAR(30) COMMENT '确认函编号',
    order_delivery_type VARCHAR(20) COMMENT '订单发货类型',
    discount_strength VARCHAR(20) COMMENT '优惠力度',
    purchase_schedule VARCHAR(30) COMMENT '采购档期',
    mid VARCHAR(20) COMMENT 'MID',
    is_exchange VARCHAR(5) COMMENT '是否换货',
    application_scenario VARCHAR(50) COMMENT '应用场景',
    event_subtype VARCHAR(30) COMMENT '活动子类',
    tax_code VARCHAR(20) COMMENT '税收编码',
    taxable_goods VARCHAR(100) COMMENT '货物或应税劳务、服务名称',
    third_category VARCHAR(30) COMMENT '三级分类',
    biz_date VARCHAR(20) COMMENT '业务发生日期',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '唯品会_供应商平台_活动折扣明细';



-- 唯品会_供应商平台_会员价保
# drop table if exists fin_vph_supplier_platform_member_price_protection_dly;
CREATE TABLE fin_vph_supplier_platform_member_price_protection_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    supplier_id VARCHAR(20) COMMENT '供应商编号',
    supplier_name VARCHAR(50) COMMENT '供应商名称',
    brand VARCHAR(30) COMMENT '品牌',
    order_status VARCHAR(20) COMMENT '订单状态',
    sales_order_no VARCHAR(30) COMMENT 'SO',
    original_po_no VARCHAR(30) COMMENT '原单号',
    purchase_order_no VARCHAR(30) COMMENT 'PO',
    sku VARCHAR(20) COMMENT 'SKU',
    sku_desc VARCHAR(100) COMMENT 'SKU描述',
    price_protect_time VARCHAR(20) COMMENT '价保申请时间',
    price_protect_qty VARCHAR(20) COMMENT '价保数量',
    price_protect_no VARCHAR(30) COMMENT '价保单号',
    price_protect_type VARCHAR(20) COMMENT '价保类型',
    previous_price VARCHAR(20) COMMENT '上次比价商品价',
    current_price VARCHAR(20) COMMENT '本次比价商品价',
    price_protect_amount VARCHAR(20) COMMENT '价保金额',
    supplier_ratio VARCHAR(20) COMMENT '供应商承担比例',
    supplier_due_amount VARCHAR(20) COMMENT '供应商应承担金额',
    supplier_actual_amount VARCHAR(20) COMMENT '供应商实际承担金额',
    tax_rate VARCHAR(10) COMMENT '税率',
    event_main_id VARCHAR(30) COMMENT '活动主编号',
    mid VARCHAR(20) COMMENT 'MID',
    is_exchange VARCHAR(5) COMMENT '是否换货',
    price_protect_count VARCHAR(20) COMMENT '价保次数',
    purchase_schedule VARCHAR(30) COMMENT '采购档期',
    delivery_type VARCHAR(20) COMMENT '发货类型',
    tax_code VARCHAR(20) COMMENT '税收编码',
    taxable_goods VARCHAR(100) COMMENT '货物或应税劳务、服务名称',
    third_category VARCHAR(30) COMMENT '三级分类',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '唯品会_供应商平台_会员价保';



-- 唯品会_供应商平台_其他明细
# drop table if exists fin_vph_supplier_platform_others_detail_dly;
CREATE TABLE fin_vph_supplier_platform_others_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    data_period VARCHAR(20) COMMENT '数据所属期间',
    supplier_id VARCHAR(20) COMMENT '供应商编号',
    supplier_name VARCHAR(50) COMMENT '供应商名称',
    brand_name VARCHAR(30) COMMENT '品牌名称',
    purchase_order_no VARCHAR(30) COMMENT '采购单号',
    original_po_no VARCHAR(30) COMMENT '原采购单号',
    biz_assistant VARCHAR(20) COMMENT '商助',
    sales_order_no VARCHAR(30) COMMENT '销售订单号',
    product_no VARCHAR(20) COMMENT '货号',
    barcode VARCHAR(50) COMMENT '条码',
    product_name VARCHAR(50) COMMENT '商品名称',
    settlement_qty VARCHAR(20) COMMENT '结算数量',
    unit_price_excl_tax VARCHAR(20) COMMENT '结算不含税单价',
    unit_price_incl_tax VARCHAR(20) COMMENT '结算含税单价',
    tax_rate VARCHAR(10) COMMENT '税率',
    amount_excl_tax VARCHAR(20) COMMENT '结算不含税金额:销售数量*结算不含税单价',
    amount_incl_tax VARCHAR(20) COMMENT '结算含税金额:销售数量*结算含税单价',
    currency VARCHAR(3) COMMENT '币种',
    type VARCHAR(20) COMMENT '类型',
    price_ref_no VARCHAR(30) COMMENT '取价参考单号',
    return_po_ref VARCHAR(30) COMMENT '回采PO对应原PO号',
    return_supply_no VARCHAR(30) COMMENT '退供单号',
    return_diff_no VARCHAR(30) COMMENT '退供差异单号',
    tax_code VARCHAR(20) COMMENT '税收编码',
    taxable_goods VARCHAR(100) COMMENT '货物或应税劳务、服务名称',
    third_category VARCHAR(30) COMMENT '三级分类',
    biz_date VARCHAR(20) COMMENT '业务发生日期',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '唯品会_供应商平台_其他明细';



-- 唯品会_供应商平台_差异详情
# drop table if exists fin_vph_supplier_platform_difference_detail_dly;
CREATE TABLE fin_vph_supplier_platform_difference_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    category VARCHAR(50) COMMENT '类别',
    tax_code VARCHAR(20) COMMENT '税码',
    charge_item VARCHAR(50) COMMENT '收费项目',
    fee_definition VARCHAR(100) COMMENT '费用定义',
    supplier_code VARCHAR(20) COMMENT '供应商代码',
    supplier_name VARCHAR(100) COMMENT '供应商名称',
    biz_assist VARCHAR(50) COMMENT '商助',
    department VARCHAR(50) COMMENT '部门',
    brand VARCHAR(50) COMMENT '品牌',
    cooperation_mode VARCHAR(50) COMMENT '合作模式',
    fee_reason_desc VARCHAR(200) COMMENT '费用原因说明',
    confirmed_amount VARCHAR(20) COMMENT '确认金额',
    doc_total_amount VARCHAR(20) COMMENT '单据汇总金额',
    currency VARCHAR(3) COMMENT '币种',
    warehouse VARCHAR(50) COMMENT '仓库',
    sales_order VARCHAR(50) COMMENT 'SO',
    purchase_order VARCHAR(50) COMMENT 'PO',
    payment_method VARCHAR(50) COMMENT '收款方式',
    biz_confirmation_party VARCHAR(50) COMMENT '商务确认扣款主体',
    final_deduction_method VARCHAR(50) COMMENT '最终扣款方式',
    deduction_party VARCHAR(50) COMMENT '扣款主体',
    status VARCHAR(20) COMMENT '状态',
    reconciliation_accountant VARCHAR(50) COMMENT '对账会计',
    data_serial_no VARCHAR(50) COMMENT '数据流水号',
    bill_no VARCHAR(50) COMMENT '账单号',
    created_by VARCHAR(50) COMMENT '新建人',
    created_time VARCHAR(20) COMMENT '新建时间',
    sku_code VARCHAR(50) COMMENT 'SKU',
    sku_desc VARCHAR(200) COMMENT 'SKU描述',
    return_supply_no VARCHAR(50) COMMENT '退供单号',
    picking_list_no VARCHAR(50) COMMENT '拣货单号',
    delivery_note_no VARCHAR(50) COMMENT '送货单号',
    oos_qty VARCHAR(20) COMMENT '缺货数量',
    ebs_doc_no VARCHAR(50) COMMENT 'EBS单据号',
    oos_unit_price VARCHAR(20) COMMENT '缺货单价',
    system_price VARCHAR(20) COMMENT '系统描述价格',
    tag_price VARCHAR(20) COMMENT '实物吊牌价格',
    price_protect_qty VARCHAR(20) COMMENT '价保数量',
    timeout_count VARCHAR(20) COMMENT '超时次数',
    price_protect_unit_price VARCHAR(20) COMMENT '价保单价',
    work_order_no VARCHAR(50) COMMENT '工单号',
    price_protect_end_date VARCHAR(20) COMMENT '价保截至日期',
    return_diff_no VARCHAR(50) COMMENT '退供差异单号',
    price_protect_start_date VARCHAR(20) COMMENT '价保时间从',
    supplier_feedback VARCHAR(200) COMMENT '供应商反馈情况',
    price_protect_end_date_2 VARCHAR(20) COMMENT '价保时间至',
    compensation_reason VARCHAR(200) COMMENT '赔偿原因',
    inbound_diff_no VARCHAR(50) COMMENT '来货差异单号',
    cancel_date VARCHAR(20) COMMENT '取消日期',
    oos_reason VARCHAR(200) COMMENT '缺货原因',
    diff_type VARCHAR(50) COMMENT '差异类型',
    tax_code_2 VARCHAR(20) COMMENT '税收编码',
    taxable_goods_service VARCHAR(200) COMMENT '货物或应税劳务、服务名称',
    third_category VARCHAR(50) COMMENT '三级分类',
    replenish_time VARCHAR(20) COMMENT '补寄时间',
    jitx_flag VARCHAR(10) COMMENT 'JITX标识',
    replenish_order_no VARCHAR(50) COMMENT '补寄订单号',
    related_so VARCHAR(50) COMMENT '关联SO号',
    replenish_tracking_no VARCHAR(50) COMMENT '补寄运单号',
    quantity VARCHAR(20) COMMENT '数量',
    tax_rate VARCHAR(10) COMMENT '税率',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '唯品会_供应商平台_差异详情';



-- 小红书_小红书千帆_订单销售
# drop table if exists fin_xhs_qf_sale_detail_dly;
CREATE TABLE fin_xhs_qf_sale_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    settlement_time VARCHAR(19) COMMENT '结算时间',
    order_time VARCHAR(19) COMMENT '下单时间',
    complete_time VARCHAR(19) COMMENT '完成时间',
    order_id VARCHAR(64) COMMENT '订单号',
    revenue_amount VARCHAR(20) COMMENT '收入金额',
    settlement_account VARCHAR(32) COMMENT '结算帐户',
    commission_base VARCHAR(20) COMMENT '计佣基数',
    goods_payment VARCHAR(20) COMMENT '商品实付',
    merchant_discount VARCHAR(20) COMMENT '商家优惠总额',
    platform_subsidy VARCHAR(20) COMMENT '平台优惠补贴',
    cross_tax_paid VARCHAR(20) COMMENT '跨境税代缴',
    product_tax VARCHAR(20) COMMENT '商品税金',
    commission VARCHAR(20) COMMENT '佣金',
    shipping_paid VARCHAR(20) COMMENT '运费实付',
    shipping_subsidy VARCHAR(20) COMMENT '平台运费补贴',
    shipping_tax VARCHAR(20) COMMENT '运费税金',
    payment_fee VARCHAR(20) COMMENT '支付渠道费',
    distribution_commission VARCHAR(20) COMMENT '分销佣金',
    service_fee VARCHAR(20) COMMENT '服务商佣金',
    huabei_fee VARCHAR(20) COMMENT '花呗分期手续费',
    installment_rate VARCHAR(10) COMMENT '分期费率',
    remark VARCHAR(255) COMMENT '备注',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '小红书_小红书千帆_订单销售';


-- 小红书_小红书千帆_订单退款
# drop table if exists fin_xhs_qf_refund_detail_dly;
CREATE TABLE fin_xhs_qf_refund_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    settlement_time VARCHAR(19) COMMENT '结算时间',
    refund_time VARCHAR(19) COMMENT '退款时间',
    total_payout VARCHAR(20) COMMENT '支出总额',
    settlement_account VARCHAR(32) COMMENT '结算帐户',
    commission_base VARCHAR(20) COMMENT '计佣基数',
    goods_refund VARCHAR(20) COMMENT '商品实退',
    platform_subsidy VARCHAR(20) COMMENT '平台优惠补贴',
    commission VARCHAR(20) COMMENT '佣金',
    shipping_refund VARCHAR(20) COMMENT '运费实退',
    shipping_subsidy VARCHAR(20) COMMENT '平台运费补贴',
    payment_fee VARCHAR(20) COMMENT '支付渠道费',
    distribution_commission VARCHAR(20) COMMENT '分销佣金',
    service_fee VARCHAR(20) COMMENT '服务商佣金',
    huabei_fee VARCHAR(20) COMMENT '花呗分期手续费',
    order_id VARCHAR(64) COMMENT '订单号',
    after_sale_id VARCHAR(64) COMMENT '售后单号',
    remark VARCHAR(255) COMMENT '备注',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '小红书_小红书千帆_订单退款';


-- 小红书_小红书千帆_运费宝
# drop table if exists fin_xhs_qf_ship_fee_detail_dly;
CREATE TABLE fin_xhs_qf_ship_fee_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    settlement_time VARCHAR(19) COMMENT '结算时间',
    effective_time VARCHAR(19) COMMENT '生效时间',
    order_time VARCHAR(19) COMMENT '用户下单时间',
    ship_time VARCHAR(19) COMMENT '发货时间',
    order_id VARCHAR(64) COMMENT '订单号',
    freight_voucher_no VARCHAR(64) COMMENT '运费宝单号',
    amount VARCHAR(20) COMMENT '金额',
    settlement_account VARCHAR(32) COMMENT '结算账户',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '小红书_小红书千帆_运费宝';



-- 云集POP_商家后台_发货
# drop table if exists fin_yunjipop_ht_sale_detail_dly;
CREATE TABLE fin_yunjipop_ht_sale_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    settlement_id VARCHAR(255) COMMENT '结算单号',
    order_type VARCHAR(20) COMMENT '业务订单类型',
    yj_sub_order VARCHAR(255) COMMENT 'YJ子订单号',
    yj_order_no VARCHAR(255) COMMENT 'YJ单号',
    channel VARCHAR(30) COMMENT '渠道',
    receipt_time VARCHAR(20) COMMENT '签收时间',
    ship_time VARCHAR(20) COMMENT '发货时间',
    payment_method VARCHAR(30) COMMENT '支付方式',
    product_code VARCHAR(255) COMMENT '商品编码',
    product_name VARCHAR(255) COMMENT '商品名称',
    spec_name VARCHAR(100) COMMENT '规格名称',
    ship_qty VARCHAR(10) COMMENT '发货数量',
    product_amount VARCHAR(15) COMMENT '货品金额',
    payment_time VARCHAR(20) COMMENT '支付时间',
    merchant_discount VARCHAR(15) COMMENT '商家优惠金额',
    platform_discount VARCHAR(15) COMMENT '平台承担折扣金额',
    platform_fee VARCHAR(15) COMMENT '平台使用费',
    transaction_fee VARCHAR(15) COMMENT '交易服务费',
    freight VARCHAR(15) COMMENT '运费',
    merchant_receivable VARCHAR(15) COMMENT '商家应收金额',
    barcode VARCHAR(50) COMMENT '商品条码',
    write_off_status VARCHAR(10) COMMENT '冲销状态',
    write_off_batch VARCHAR(30) COMMENT '冲销批次',
    write_off_time VARCHAR(20) COMMENT '冲销时间',
    write_off_flag VARCHAR(10) COMMENT '冲销标识',
    is_rebate VARCHAR(5) COMMENT '是否返现',
    live_deduct_flag VARCHAR(10) COMMENT '直播提扣标识',
    is_exchange VARCHAR(5) COMMENT '是否换购',
    is_gift VARCHAR(5) COMMENT '是否赠品',
    diamond_discount VARCHAR(15) COMMENT '黑钻优惠',
    multi_discount VARCHAR(15) COMMENT '多件多折优惠',
    fee_discount_rate VARCHAR(10) COMMENT '交易服务费折扣比例',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '云集POP_商家后台_发货';

-- 云集POP_商家后台_退款
# drop table if exists fin_yunjipop_ht_refund_detail_dly;
CREATE TABLE fin_yunjipop_ht_refund_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    settlement_id VARCHAR(255) COMMENT '结算单号',
    order_type VARCHAR(20) COMMENT '业务订单类型',
    refund_no VARCHAR(255) COMMENT '退款单号(TK)',
    yj_main_no VARCHAR(255) COMMENT '主单(YJ)',
    channel VARCHAR(30) COMMENT '渠道',
    sub_order_no VARCHAR(255) COMMENT '子订单号',
    payment_time VARCHAR(20) COMMENT '支付时间',
    merchant_discount VARCHAR(15) COMMENT '商家优惠金额',
    platform_discount VARCHAR(15) COMMENT '平台承担折扣金额',
    refund_time VARCHAR(20) COMMENT '退款完成时间',
    payment_method VARCHAR(30) COMMENT '支付方式',
    product_code VARCHAR(50) COMMENT '商品编码',
    product_name VARCHAR(255) COMMENT '商品名称',
    spec_name VARCHAR(100) COMMENT '规格名称',
    return_qty VARCHAR(10) COMMENT '退货数量',
    refund_amount VARCHAR(15) COMMENT '退款金额',
    platform_fee VARCHAR(15) COMMENT '平台使用费',
    transaction_fee VARCHAR(15) COMMENT '交易服务费',
    freight VARCHAR(15) COMMENT '运费',
    settlement_amount VARCHAR(15) COMMENT '应结算商家金额',
    barcode VARCHAR(50) COMMENT '商品条码',
    write_off_status VARCHAR(10) COMMENT '冲销状态',
    write_off_batch VARCHAR(20) COMMENT '冲销批次',
    write_off_time VARCHAR(20) COMMENT '冲销时间',
    write_off_flag VARCHAR(10) COMMENT '冲销标识',
    is_rebate VARCHAR(5) COMMENT '是否返现',
    original_yj_no VARCHAR(20) COMMENT '原YJ单号',
    live_deduct_flag VARCHAR(10) COMMENT '直播提扣标识',
    is_exchange VARCHAR(5) COMMENT '是否换购',
    is_gift VARCHAR(5) COMMENT '是否赠品',
    diamond_discount VARCHAR(15) COMMENT '黑钻优惠',
    multi_discount VARCHAR(15) COMMENT '多件多折优惠',
    fee_discount_rate VARCHAR(10) COMMENT '交易服务费折扣比例',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '云集POP_商家后台_退款';


-- 云集POP_商家后台_费用单
# drop table if exists fin_yunjipop_ht_fee_detail_dly;
CREATE TABLE fin_yunjipop_ht_fee_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    source VARCHAR(50) COMMENT '来源',
    fee_bill_no VARCHAR(255) COMMENT '费用单号',
    fee_detail_no VARCHAR(255) COMMENT '费用明细单号',
    settlement_no VARCHAR(255) COMMENT '结算单号',
    bill_date VARCHAR(64) COMMENT '单据日期',
    settlement_method VARCHAR(30) COMMENT '结算方式',
    currency VARCHAR(10) COMMENT '结算货币',
    fee_item VARCHAR(50) COMMENT '费用项',
    amount VARCHAR(15) COMMENT '费用金额',
    source_bill_no VARCHAR(512) COMMENT '源单号',
    remark VARCHAR(512) COMMENT '备注',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '云集POP_商家后台_费用单';


-- 云集POP_商家后台_退货运费补贴
# drop table if exists fin_yunjipop_ht_return_fee_subsidy_detail_dly;
CREATE TABLE fin_yunjipop_ht_return_fee_subsidy_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    settlement_no VARCHAR(255) COMMENT '结算单号',
    yj_order_no VARCHAR(255) COMMENT 'YJ单号',
    return_subsidy VARCHAR(15) COMMENT '退货运费补贴金额',
    create_date VARCHAR(64) COMMENT '创建日期',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '云集POP_商家后台_退货运费补贴';



-- 云集微店_代销商管理系统_发货明细
# drop table if exists fin_yunjiwd_msys_sale_detail_dly;
CREATE TABLE fin_yunjiwd_msys_sale_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    order_type VARCHAR(20) COMMENT '业务订单类型',
    order_no VARCHAR(50) COMMENT '订单编号',
    original_order_no VARCHAR(50) COMMENT '原始单号',
    sku VARCHAR(20) COMMENT 'SKU',
    product_name VARCHAR(100) COMMENT '商品名称',
    specification VARCHAR(200) COMMENT '商品规格',
    pay_time VARCHAR(20) COMMENT '支付时间',
    ship_time VARCHAR(20) COMMENT '发货时间',
    actual_quantity VARCHAR(10) COMMENT '实发数',
    settle_unit_price VARCHAR(10) COMMENT '结算单价',
    tax_rate VARCHAR(10) COMMENT '税率',
    settle_total VARCHAR(20) COMMENT '结算总价',
    is_rebate VARCHAR(1) COMMENT '是否返现',
    settle_tax VARCHAR(20) COMMENT '结算税费',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '云集微店_代销商管理系统_发货明细';

-- 云集微店_代销商管理系统_退货明细
# drop table if exists fin_yunjiwd_msys_return_detail_dly;
CREATE TABLE fin_yunjiwd_msys_return_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    order_type VARCHAR(50) COMMENT '业务订单类型',
    refund_no VARCHAR(100) COMMENT '退款单号(TK)',
    order_no VARCHAR(100) COMMENT '订单号(SO)',
    main_order_no VARCHAR(100) COMMENT '主单(YJ)',
    pay_time VARCHAR(20) COMMENT '支付时间',
    refund_time VARCHAR(20) COMMENT '退款完成时间',
    sku VARCHAR(50) COMMENT 'SKU',
    product_name VARCHAR(200) COMMENT '商品名称',
    spec_name VARCHAR(150) COMMENT '规格名称',
    return_qty VARCHAR(50) COMMENT '退货数量',
    unit_price VARCHAR(50) COMMENT '结算单价',
    total_price VARCHAR(50) COMMENT '结算总价',
    is_cashback VARCHAR(20) COMMENT '是否返现',
    tax_amount VARCHAR(50) COMMENT '结算税费',
    refund_type VARCHAR(50) COMMENT '退款类型',
    after_sale_ratio VARCHAR(10) COMMENT '售后比例',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '云集微店_代销商管理系统_退货明细';

-- 云集微店_代销商管理系统_补偿明细
drop table if exists fin_yunjiwd_msys_offsets_detail_dly;
CREATE TABLE fin_yunjiwd_msys_offsets_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(64) COMMENT '登入账号',
    store_id VARCHAR(64) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    compensate_no VARCHAR(100)  COMMENT '补偿单(BC)',
    compensate_time VARCHAR(20) COMMENT '补偿时间',
    pay_time VARCHAR(20) COMMENT '支付时间',
    order_no VARCHAR(100) COMMENT '订单号(SO)',
    main_order_no VARCHAR(100) COMMENT '主单(YJ)',
    sku VARCHAR(50) COMMENT 'SKU',
    product_name VARCHAR(200) COMMENT '商品名称',
    product_spec VARCHAR(150) COMMENT '商品规格',
    unit_price VARCHAR(50) COMMENT '结算单价',
    compensate_amount VARCHAR(50) COMMENT '补偿金额',
    sale_price VARCHAR(50) COMMENT '商品售价',
    sale_qty VARCHAR(50) COMMENT '销售数量',
    settle_compensate_qty VARCHAR(50) COMMENT '结算补偿数量',
    settle_compensate_amount VARCHAR(50) COMMENT '结算补偿金额',
    tax_amount VARCHAR(50) COMMENT '结算税额',
    compensate_reason VARCHAR(255) COMMENT '补偿原因',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '云集微店_代销商管理系统_补偿明细';

-- 云集微店_代销商管理系统_费用明细
drop table if exists fin_yunjiwd_msys_fee_detail_dly;
CREATE TABLE fin_yunjiwd_msys_fee_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    fee_no VARCHAR(512)  COMMENT '费用单号',
    supplier_code VARCHAR(20) COMMENT '供应商编码',
    supplier_name VARCHAR(100) COMMENT '供应商名称',
    settlement_method VARCHAR(50) COMMENT '结算方式',
    doc_date VARCHAR(64) COMMENT '单据日期',
    currency VARCHAR(64) COMMENT '结算货币',
    expense_item VARCHAR(100) COMMENT '费用项',
    amount VARCHAR(64) COMMENT '费用金额',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '云集微店_代销商管理系统_费用明细';


-- 微信商城_有赞微商城_对账单明细
drop table if exists fin_wxshop_yzshop_bills_detail_dly;
CREATE TABLE fin_wxshop_yzshop_bills_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    type VARCHAR(32) COMMENT '类型',
    name VARCHAR(128) COMMENT '名称',
    biz_no VARCHAR(64) COMMENT '业务单号',
    payment_sn VARCHAR(64) COMMENT '支付流水号',
    related_no VARCHAR(64) COMMENT '关联单号',
    source_region VARCHAR(32) COMMENT '交易来源地',
    accounting_entity VARCHAR(128) COMMENT '账务主体',
    account VARCHAR(64) COMMENT '账户',
    income VARCHAR(16) COMMENT '收入(元)',
    expense VARCHAR(16) COMMENT '支出(元)',
    balance VARCHAR(16) COMMENT '余额(元)',
    payment_method VARCHAR(32) COMMENT '支付方式',
    counterparty VARCHAR(128) COMMENT '交易对手',
    channel VARCHAR(32) COMMENT '渠道',
    order_time VARCHAR(20) COMMENT '下单时间',
    settle_time VARCHAR(20) COMMENT '入账时间',
    operator VARCHAR(64) COMMENT '操作人',
    extra_info VARCHAR(255) COMMENT '附加信息',
    remark VARCHAR(255) COMMENT '备注',
    origin VARCHAR(32) COMMENT '来源',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '微信商城_有赞微商城_对账单明细';

-- 微信视频号_微信小店_资金流水明细
drop table if exists fin_wxsph_wxxd_cash_flow_detail_dly;
CREATE TABLE fin_wxsph_wxxd_cash_flow_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    trans_id VARCHAR(255) COMMENT '流水单号',
    trans_time VARCHAR(20) COMMENT '记账时间',
    trans_type VARCHAR(20) COMMENT '动帐类型',
    income_expense_type VARCHAR(64) COMMENT '收支类型',
    amount VARCHAR(64) COMMENT '收支金额',
    balance VARCHAR(64) COMMENT '账户余额',
    order_id VARCHAR(255) COMMENT '关联订单号',
    after_sale_id VARCHAR(255) COMMENT '关联售后单号',
    withdraw_id VARCHAR(255) COMMENT '关联提现单号',
    policy_id VARCHAR(255) COMMENT '关联保单号',
    gift_id VARCHAR(255) COMMENT '关联礼物单号',
    details VARCHAR(512) COMMENT '详情',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '微信视频号_微信小店_资金流水';


-- 米家_供应商管理系统_物料计划
drop table if exists fin_mj_gysht_order_detail_dly;
CREATE TABLE fin_mj_gysht_order_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    po_line VARCHAR(50) COMMENT '采购订单/行项目',
    scm_po_line VARCHAR(50) COMMENT 'SCM 采购订单/行项目',
    dn_line VARCHAR(50) COMMENT '送货单/行项目',
    asn_type VARCHAR(20) COMMENT 'ASN类型',
    asn_status VARCHAR(20) COMMENT 'ASN状态',
    dn_status_desc VARCHAR(100) COMMENT '送货单状态描述',
    ship_date VARCHAR(20) COMMENT '发货日期',
    ship_wh VARCHAR(20) COMMENT '发货仓库',
    eta_date VARCHAR(20) COMMENT '预计到货日期',
    arrival_wh VARCHAR(20) COMMENT '到货仓库',
    actual_receipt_date VARCHAR(20) COMMENT '实际入库日期',
    material_code VARCHAR(30) COMMENT '物料编码',
    material_desc VARCHAR(200) COMMENT '物料描述',
    sku VARCHAR(30) COMMENT '商品ID',
    factory_pn VARCHAR(30) COMMENT '工厂料号',
    asn_qty VARCHAR(20) COMMENT 'ASN数量',
    received_qty VARCHAR(20) COMMENT '小米实收数量',
    supplier_id VARCHAR(20) COMMENT '供应商编号',
    supplier_name VARCHAR(50) COMMENT '供应商名称',
    asn_line_status VARCHAR(20) COMMENT 'ASN行项目状态',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '米家_供应商管理系统_物料计划';


-- 亚马逊_后台_付款账单明细
drop table if exists fin_ymx_ht_pay_bills_detail_dly;
CREATE TABLE fin_ymx_ht_pay_bills_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    datetime VARCHAR(30) COMMENT '交易日期时间',
    settlement_id VARCHAR(50) COMMENT '结算批次唯一标识',
    type VARCHAR(20) COMMENT '交易类型(订单/退款)',
    order_id VARCHAR(50) COMMENT '订单唯一编号',
    sku VARCHAR(30) COMMENT '商品库存标识码',
    description VARCHAR(255) COMMENT '商品描述信息',
    quantity VARCHAR(20) COMMENT '商品数量',
    marketplace VARCHAR(50) COMMENT '销售平台名称',
    account_type VARCHAR(30) COMMENT '卖家账户类型',
    fulfillment VARCHAR(20) COMMENT '履约方式(FBA/自发货)',
    order_city VARCHAR(50) COMMENT '订单收货城市',
    order_state VARCHAR(30) COMMENT '订单收货州/省',
    order_postal VARCHAR(20) COMMENT '订单邮政编码',
    tax_collection_model VARCHAR(50) COMMENT '税费征收模型',
    product_sales VARCHAR(50) COMMENT '商品销售额(含税)',
    product_sales_tax VARCHAR(50) COMMENT '商品销售税费',
    shipping_credits VARCHAR(50) COMMENT '运费补贴金额',
    shipping_credits_tax VARCHAR(50) COMMENT '运费补贴税费',
    gift_wrap_credits VARCHAR(50) COMMENT '礼品包装费',
    giftwrap_credits_tax VARCHAR(50) COMMENT '礼品包装税费',
    regulatory_fee VARCHAR(50) COMMENT '监管费用',
    tax_on_regulatory_fee VARCHAR(50) COMMENT '监管费税费',
    promotional_rebates VARCHAR(50) COMMENT '促销折扣金额',
    promotional_rebates_tax VARCHAR(50) COMMENT '促销折扣税费',
    marketplace_withheld_tax VARCHAR(50) COMMENT '平台代扣税款',
    selling_fees VARCHAR(50) COMMENT '平台销售佣金',
    fba_fees VARCHAR(50) COMMENT 'FBA物流费用',
    other_transaction_fees VARCHAR(50) COMMENT '其他交易费用',
    other VARCHAR(100) COMMENT '其他杂项费用',
    total VARCHAR(100) COMMENT '合计总金额',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '亚马逊_后台_付款账单明细';


-- 小米有品_商家工作台_订单计费明细
drop table if exists fin_xmyp_ht_sale_detail_dly;
CREATE TABLE fin_xmyp_ht_sale_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    order_id          VARCHAR(255)  COMMENT '订单号',
    order_type        VARCHAR(255)  COMMENT '订单类型',
    payment_time      VARCHAR(255)  COMMENT '支付时间',
    gid               VARCHAR(255)  COMMENT 'GID',
    pid               VARCHAR(255)  COMMENT 'PID',
    pid_name          VARCHAR(255) COMMENT 'PID商品名称',
    positive_flow     VARCHAR(255)  COMMENT '正流水',
    platform_rate     VARCHAR(255)  COMMENT '平台费率',
    platform_fee      VARCHAR(20)  COMMENT '平台服务费',
    mijia_fee_rate    VARCHAR(20)  COMMENT '米家服务费费率',
    mijia_fee         VARCHAR(20)  COMMENT '米家服务费',
    freight           VARCHAR(20)  COMMENT '运费',
    platform_promotion VARCHAR(20)  COMMENT '有品承担优惠',
    quantity          VARCHAR(10)  COMMENT '件数',
    sales_channel     VARCHAR(50)  COMMENT '销售渠道',
    package_pid       VARCHAR(20)  COMMENT '套装pid',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '小米有品_商家工作台_订单计费明细';

-- 小米有品_商家工作台_退款计费明细
drop table if exists fin_xmyp_ht_refund_detail_dly;
CREATE TABLE fin_xmyp_ht_refund_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    refund_id         VARCHAR(255)  COMMENT '退款单号',
    order_id          VARCHAR(255)  COMMENT '订单号',
    order_type        VARCHAR(20)  COMMENT '订单类型',
    refund_time       VARCHAR(20)  COMMENT '退款时间(不一定到账)',
    refund_category   VARCHAR(30)  COMMENT '退款类别',
    gid               VARCHAR(255)  COMMENT 'GID',
    pid               VARCHAR(255)  COMMENT 'PID',
    product_name      VARCHAR(100) COMMENT 'PID商品名称',
    negative_flow     VARCHAR(20)  COMMENT '负流水',
    platform_rate     VARCHAR(20)  COMMENT '平台费率',
    platform_fee      VARCHAR(20)  COMMENT '平台服务费',
    mijia_rate        VARCHAR(20)  COMMENT '米家服务费费率',
    mijia_fee         VARCHAR(20)  COMMENT '米家服务费',
    negative_freight  VARCHAR(20)  COMMENT '负运费',
    refund_status     VARCHAR(20)  COMMENT '类型',
    platform_promotion VARCHAR(20)  COMMENT '有品承担优惠',
    quantity          VARCHAR(10)  COMMENT '件数',
    refund_type       VARCHAR(20)  COMMENT '退款类型',
    remark            VARCHAR(512) COMMENT '备注',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '小米有品_商家工作台_退款计费明细';

-- 小米有品_商家工作台_正负流水明细
drop table if exists fin_xmyp_ht_plus_minus_detail_dly;
CREATE TABLE fin_xmyp_ht_plus_minus_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    order_id VARCHAR(255)  COMMENT '订单单号',
    parent_order_id VARCHAR(255) COMMENT '父订单号',
    product_name VARCHAR(128) COMMENT '商品名称',
    product_gid VARCHAR(255) COMMENT '商品GID',
    product_pid VARCHAR(255) COMMENT '商品PID',
    order_time VARCHAR(20) COMMENT '订单时间',
    receive_time VARCHAR(20) COMMENT '收货时间',
    return_time VARCHAR(20) COMMENT '退货时间',
    product_amount VARCHAR(15) COMMENT '商品金额',
    service_fee VARCHAR(15) COMMENT '平台服务费',
    sign_type VARCHAR(4) COMMENT '正负类型',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '小米有品_商家工作台_正负流水明细';

-- 小米有品_商家工作台_运费无忧明细
drop table if exists fin_xmyp_ht_shipping_fee_detail_dly;
CREATE TABLE fin_xmyp_ht_shipping_fee_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    order_id VARCHAR(255) COMMENT '订单号',
    product_id VARCHAR(255) COMMENT '商品id',
    sku_name VARCHAR(255) COMMENT 'SKU名称',
    quantity VARCHAR(64) COMMENT '数量',
    after_sale_rate VARCHAR(64) COMMENT '售后率',
    dimensions VARCHAR(64) COMMENT '长宽高（cm*cm*cm）',
    product_weight VARCHAR(64) COMMENT '商品重量（KG）',
    billing_weight VARCHAR(64) COMMENT '计费重量（KG）',
    free_shipping_fee VARCHAR(64) COMMENT '免邮服务费(元)',
    is_member_free_shipping VARCHAR(64) COMMENT '是否会员售后免邮',
    member_shipping_fee_rate VARCHAR(64) COMMENT '会员售后免邮收费比例',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '小米有品_商家工作台_运费无忧明细';

-- 小米有品_商家工作台_仓储支出明细
drop table if exists fin_xmyp_ht_warehouse_cost_detail_dly;
CREATE TABLE fin_xmyp_ht_warehouse_cost_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    oper_date VARCHAR(16) COMMENT '操作日期',
    product_name VARCHAR(100) COMMENT '商品名称',
    sku_id VARCHAR(64) COMMENT '商品SKUID',
    warehouse_type VARCHAR(64) COMMENT '仓库类型',
    length VARCHAR(64) COMMENT '长/mm',
    width VARCHAR(64) COMMENT '宽/mm',
    height VARCHAR(64) COMMENT '高/mm',
    weight VARCHAR(64) COMMENT '重量/g',
    stock_qty VARCHAR(64) COMMENT '商品库存',
    outbound_qty VARCHAR(64) COMMENT '当日出库件数',
    turnover_days VARCHAR(64) COMMENT '当月周转天数',
    storage_fee VARCHAR(20) COMMENT '仓储费/元',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '小米有品_商家工作台_仓储支出明细';

-- 小米有品_商家工作台_仓储收入明细
drop table if exists fin_xmyp_ht_warehouse_income_detail_mly;
CREATE TABLE fin_xmyp_ht_warehouse_income_detail_mly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    report_id  VARCHAR(512) COMMENT '报表编号',
    bill_date VARCHAR(64) COMMENT '账单日期',
    settle_no VARCHAR(64) COMMENT '结算编号',
    settle_type VARCHAR(64) COMMENT '结算类型',
    settle_amount VARCHAR(64) COMMENT '结算金额（元）',
    income VARCHAR(64) COMMENT '收入（元）',
    income_detail VARCHAR(64) COMMENT '收入明细',
    expense VARCHAR(64) COMMENT '支出（元）',
    adjustment VARCHAR(255) COMMENT '调整内容',
    expense_detail VARCHAR(255) COMMENT '支出明细',
    settle_status VARCHAR(20) COMMENT '结算状态',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name),
    INDEX idx_report_id(report_id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '小米有品_商家工作台_仓储收入明细';

-- 小米有品_商家工作台_违规管理明细
drop table if exists fin_xmyp_ht_violation_management_detail_dly;
CREATE TABLE fin_xmyp_ht_violation_management_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    violation_id VARCHAR(255)  COMMENT '违规单ID',
    violation_type VARCHAR(64) COMMENT '违规类型',
    violation_action VARCHAR(64) COMMENT '违规行为',
    severity_level VARCHAR(64) COMMENT '违规级别',
    handling_type VARCHAR(64) COMMENT '处理类型',
    deduction_amount VARCHAR(64) COMMENT '扣款金额',
    appeal_amount VARCHAR(64) COMMENT '申诉金额',
    issue_time VARCHAR(64) COMMENT '违规单下发时间',
    appeal_deadline VARCHAR(64) COMMENT '申诉截止时间',
    status VARCHAR(64) COMMENT '处理状态',
    order_id VARCHAR(64) COMMENT '订单号',
    ug_id VARCHAR(255) COMMENT 'ugId',
    ug_penalty_count VARCHAR(64) COMMENT 'ugId处罚件数',
    ug_penalty_key VARCHAR(255) COMMENT 'ugId处罚唯一键',
    after_sale_id VARCHAR(255) COMMENT '售后服务单号',
    tracking_number VARCHAR(255) COMMENT '快递单号',
    courier_name VARCHAR(64) COMMENT '快递名称',
    payment_time VARCHAR(64) COMMENT '支付时间',
    ship_time VARCHAR(64) COMMENT '发货时间',
    actual_ship_duration VARCHAR(64) COMMENT '实际发货时长',
    gid VARCHAR(255) COMMENT 'GID',
    product_name VARCHAR(255) COMMENT '商品名',
    pid VARCHAR(64) COMMENT 'PID',
    pid_name VARCHAR(255) COMMENT 'PID名',
    delist_time VARCHAR(64) COMMENT '下架时间',
    merchant_id VARCHAR(255) COMMENT '商家ID',
    merchant_name VARCHAR(64) COMMENT '商家名',
    remarks VARCHAR(1024) COMMENT '备注',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '小米有品_商家工作台_违规管理明细';


-- 市场部费用_聚光平台_账户流水明细
drop table if exists fin_md_jg_account_flow_detail_dly;
CREATE TABLE fin_md_jg_account_flow_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    release_date VARCHAR(64) COMMENT '投放日期',
    account_name VARCHAR(100) COMMENT '账户名称',
    settle_client VARCHAR(100) COMMENT '结算客户名称',
    operation_type VARCHAR(64) COMMENT '操作类型',
    business_type VARCHAR(64) COMMENT '业务类型',
    fund_type VARCHAR(64) COMMENT '资金类型',
    amount VARCHAR(64) COMMENT '发生金额(元)',
    balance VARCHAR(64) COMMENT '余额(元)',
    operation_time VARCHAR(64) COMMENT '操作时间',
    remark VARCHAR(500) COMMENT '备注',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '市场部费用_聚光平台_账户流水明细';


-- 市场部费用_蒲公英平台_账户流水明细
drop table if exists fin_md_pgy_account_flow_detail_dly;
CREATE TABLE fin_md_pgy_account_flow_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    transaction_time VARCHAR(19) COMMENT '交易时间',
    amount VARCHAR(20) COMMENT '交易金额',
    transaction_type VARCHAR(30) COMMENT '交易类型',
    type_desc VARCHAR(50) COMMENT '交易类型描述',
    partner_name VARCHAR(100) COMMENT '合作名称',
    partner_id VARCHAR(30) COMMENT '合作id',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '市场部费用_蒲公英平台_账户流水明细';


-- 市场部费用_淘宝星河_账户流水明细
drop table if exists fin_md_tbxh_account_flow_detail_dly;
CREATE TABLE fin_md_tbxh_account_flow_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    operation_time VARCHAR(19) COMMENT '操作时间',
    income_expense_type VARCHAR(30) COMMENT '收支类型',
    flow_type VARCHAR(40) COMMENT '流水类型',
    amount VARCHAR(20) COMMENT '交易金额',
    remark VARCHAR(500) COMMENT '备注',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '市场部费用_淘宝星河_账户流水明细';


-- 市场部费用_三连竞价_账户流水明细
drop table if exists fin_md_sljj_account_flow_detail_dly;
CREATE TABLE fin_md_sljj_account_flow_detail_dly (
    id INT PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
    data_date VARCHAR(255) COMMENT '数据日期',
    data_get_datetime VARCHAR(255) COMMENT '数据流入时间',
    login_account VARCHAR(512) COMMENT '登入账号',
    store_id VARCHAR(512) COMMENT '店铺ID',
    store_name VARCHAR(64) COMMENT '店铺名称',
    record_date VARCHAR(10) COMMENT '日期',
    fund_flow VARCHAR(64) COMMENT '资金收支',
    trans_type VARCHAR(64) COMMENT '交易类型',
    -- 添加索引
    INDEX idx_data_date (data_date),
    INDEX idx_data_get_datetime (data_get_datetime),
    INDEX idx_login_account (login_account),
    INDEX idx_store_id(store_id),
    INDEX idx_store_name(store_name)

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT '市场部费用_三连竞价_账户流水明细';



