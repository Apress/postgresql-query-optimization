SELECT * FROM flight 
WHERE (actual_departure
    BETWEEN '2020-08-17' AND '2020-08-18')
	OR (actual_departure IS NULL 
		AND scheduled_departure BETWEEN '2020-08-17' AND '2020-08-18')
