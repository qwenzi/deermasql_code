select * from tmp.tmp_hr_userinfo_userid where user_name='张文杰';
select * from tmp.tmp_hr_userinfo_userid where user_name='温国荣';
select * from tmp.tmp_hr_userinfo_userid where user_name='吴豪杨';
select * from tmp.tmp_hr_userinfo_userid where user_name='谢志辉';
select * from tmp.tmp_hr_userinfo_userid where user_name='游学光';
select * from tmp.tmp_hr_userinfo_userid where user_name='罗雨昕';
-- truncate table tmp.tmp_hr_userinfo_userid;
select * from ods.ods_hr_mes_userinfo_product where a0190 = '010136';
select * from ods.ods_hr_mes_userinfo_product where a0101 = '邓桂妹';
select * from ods.ods_hr_mes_userinfo_product;
select * from ods.ods_hr_mes_userinfo_product where mobiletel = '15627225451';

select * from ods.ods_hr_mes_userinfo_product where mobiletel = '16680569498';
select "A0191"  from ods.ods_hr_mes_userinfo_product group by "A0191" ;
select * from ods.ods_hr_mes_userinfo_product where  "A0191" in ('在职人员','试用人员','在职人员            ');
select * from ods.ods_hr_mes_userinfo_product where mobiletel in ('15974536119', '17688804375', '19301384445', '18976927549', '18670077309', '17775891070', '18278488193', '13877426221', '18932073276', '13420362441', '18276641416', '17772092169', '13471985499', '16680569498', '18085627363', '15219664570', '17373348742', '13421444201', '19534539368', '18200734710', '17209890528', '19192137764', '18207584089', '17817009735', '17712831968', '15019791464', '9', '18296078050', '18886360089', '18477013676', '16692855239', '19127365323', '17765615023', '13411871882', '13506576036', '15627297242', '18065752844', '19127731992', '15014444966', '15975774393', '17736633265', '13268058872', '15914873431', '17577039682', '15918111641', '18387415528', '13751529004', '18679665240', '15675772832', '15168744291');
select distinct mobiletel from ods.ods_hr_mes_userinfo_product;
select * from ads.ads_mes_efficiency_data_push;

select * from ads.ads_mes_efficiency_data_push;

