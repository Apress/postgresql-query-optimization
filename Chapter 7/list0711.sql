CREATE MATERIALIZED VIEW passenger_passport AS
SELECT cf.passenger_id,
coalesce(max(CASE WHEN custom_field_name ='passport_num'
 THEN custom_field_value ELSE NULL END),'') AS passport_num,
 coalesce(max(CASE WHEN custom_field_name='passport_exp_date'
 THEN custom_field_value ELSE NULL END),'') AS passport_exp_date,
 coalesce(max(CASE WHEN custom_field_name ='passport_country'
 THEN custom_field_value ELSE NULL END),'') AS passport_country
FROM custom_field cf 
group by 1
