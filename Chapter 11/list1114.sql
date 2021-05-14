SELECT f.flight_id,
count(*) AS num_pass
FROM booking_leg bl
	JOIN booking b USING (booking_id)
	JOIN n passenger p
	USING (booking_id)
	JOIN flight f USING (flight_id)
WHERE  departure_airport='ORD' 
AND scheduled_departure BETWEEN '2020-07-05' AND '2020-07-13'
GROUP BY 1;
