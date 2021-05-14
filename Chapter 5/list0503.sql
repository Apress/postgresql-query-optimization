SELECT avg(flight_length),
avg (passengers)
FROM (SELECT flight_no, 
scheduled_arrival -scheduled_departure AS flight_length,
count(passenger_id) passengers
  FROM flight f
    JOIN booking_leg bl ON bl.flight_id = f.flight_id
    JOIN passenger p ON p.booking_id=bl.booking_id
	GROUP BY 1,2) a
