SELECT 
last_name,
first_name,
passport_num,
passport_exp_date,
passport_country
FROM 
passenger p
JOIN 
(SELECT cf.passenger_id,
coalesce(max(CASE WHEN custom_field_name ='passport_num'
 THEN custom_field_value ELSE NULL END),'') AS passport_num,
 coalesce(max(CASE WHEN custom_field_name='passport_exp_date'
 THEN custom_field_value ELSE NULL END),'') AS passport_exp_date,
 coalesce(max(CASE WHEN custom_field_name ='passport_country'
 THEN custom_field_value ELSE NULL END),'') AS passport_country
FROM custom_field cf 
WHERE cf.passenger_id<5000000  
GROUP BY 1) info
USING(passenger_id)
 WHERE p.passenger_id<5000000
