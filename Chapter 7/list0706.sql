SELECT bl.flight_id, 
       departure_airport,
     	 (avg(price))::numeric (7,2) AS avg_price,
       count(DISTINCT passenger_id) AS num_passengers
 FROM booking b
JOIN booking_leg bl USING (booking_id)
JOIN flight f USING (flight_id)
JOIN passenger p USING (booking_id)
WHERE actual_departure between '2020-08-01' AND '2020-08-16'
GROUP BY 1,2 
