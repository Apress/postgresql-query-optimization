SELECT passenger_id,
	text_to_integer(passport_num) AS passport_num,
	text_to_date(passport_exp_date) AS passport_exp_date
FROM passenger_passport 
