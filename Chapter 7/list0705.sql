SELECT * FROM flight_stats fs
JOIN (SELECT flight_id FROM flight f
	 WHERE actual_departure between '2020-08-01' and '2020-08-16') fl
	 ON fl.flight_id=fs.flight_id
