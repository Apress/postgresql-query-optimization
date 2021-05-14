SELECT
city, 
date_trunc('month', scheduled_departure) AS month, 
count(*)  passengers
FROM airport  a
JOIN flight f ON airport_code = departure_airport
JOIN booking_leg l ON f.flight_id =l.flight_id
JOIN boarding_pass b ON b.booking_leg_id = l.booking_leg_id
GROUP BY 1,2  ORDER BY 3 DESC