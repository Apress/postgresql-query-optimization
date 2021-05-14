SELECT 
last_name,
first_name,
coalesce(max(CASE WHEN custom_field_name ='passport_num'
 THEN custom_field_value ELSE NULL END),'') AS passport_num,
 coalesce(max(CASE WHEN custom_field_name='passport_exp_date'
 THEN custom_field_value ELSE NULL END),'') AS passport_exp_date,
 coalesce(max(CASE WHEN custom_field_name ='passport_country'
 THEN custom_field_value ELSE NULL END),'') AS passport_country
FROM passenger p JOIN custom_field cf 
USING (passenger_id)
WHERE cf.passenger_id<5000000  
AND p.passenger_id<5000000 
GROUP by 1,2
