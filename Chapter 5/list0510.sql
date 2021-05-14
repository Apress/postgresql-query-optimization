SELECT last_name, 
       first_name,
       seat
FROM boarding_pass bp
JOIN booking_leg bl USING (booking_leg_id)
JOIN flight f USING (flight_id)
JOIN booking b USING(booking_id)
JOIN passenger p USING (passenger_id)
WHERE   
(departure_airport='JFK' 
  AND scheduled_departure BETWEEN 
      '2020-07-10' AND '2020-07-11' 
       AND last_name ='JOHNSON')
OR
(departure_airport='EDW'
 AND scheduled_departure BETWEEN '2020-07-13' AND '2020-07-14' 
 AND last_name ='JOHNSTON')
