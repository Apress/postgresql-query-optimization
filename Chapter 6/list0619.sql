SELECT bl.flight_id, 
       departure_airport,
      (avg(price))::numeric (7,2) AS avg_price,
       count(DISTINCT passenger_id) AS num_passengers
FROM booking b
JOIN booking_leg bl USING (booking_id)
JOIN flight f USING (flight_id)
JOIN passenger p USING (booking_id)
	  WHERE scheduled_departure 
         BETWEEN '07-03-2020' AND '07-05-2020'
GROUP BY 1,2
