SELECT
first_name,
last_name,
pn.custom_field_value AS passport_num,
pe.custom_field_value AS passport_exp_date,
pc.custom_field_value AS passport_country
FROM passenger p
JOIN custom_field pn ON pn.passenger_id=p.passenger_id
AND p.passenger_id<5000000
JOIN custom_field pe ON pe.passenger_id=p.passenger_id 
AND pe.custom_field_name='passport_exp_date'
JOIN custom_field pc ON pc.passenger_id=p.passenger_id 
AND pc.custom_field_name='passport_country'
WHERE pn.custom_field_name='passport_num'
