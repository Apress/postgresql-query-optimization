SELECT scheduled_departure ,
	 scheduled_arrival
FROM flight
WHERE departure_airport='ORD' AND arrival_airport='JFK'
AND scheduled_departure BETWEEN '2020-07-03' AND '2020-07-04';
