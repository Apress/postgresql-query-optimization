SELECT flight_id,
       num_passengers(flight_id) AS num_pass
FROM flight f
   WHERE departure_airport='ORD' 
   AND scheduled_departure BETWEEN '2020-07-05' AND '2020-07-13';
