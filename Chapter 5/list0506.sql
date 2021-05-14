SELECT f.flight_no,
       f.scheduled_departure,
	 model,
       count(passenger_id) passengers
  FROM flight f
       JOIN booking_leg bl ON bl.flight_id = f.flight_id
       JOIN passenger p ON p.booking_id=bl.booking_id
	   JOIN aircraft ac ON ac.code=f.aircraft_code
 WHERE f.departure_airport ='JFK'
   AND f.scheduled_departure BETWEEN       
       '2020-08-14' AND '2020-08-16'
GROUP BY 1,2,3
