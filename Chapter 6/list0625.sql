SELECT 
  'Late group 1' AS grouping,		
  flight_id,
  count(*) AS num_passengers
  FROM boarding_pass bp
  JOIN booking_leg bl USING (booking_leg_id)
  JOIN booking b USING (booking_id)
  JOIN flight f USING (flight_id)
  WHERE departure_airport='FRA' AND 
  actual_departure>scheduled_departure + interval '1 hour' AND
  bp.update_ts  > scheduled_departure + interval '30 minutes'
  AND actual_departure>'2020-07-01'
GROUP BY 1,2
UNION ALL 
SELECT  
  'Late group 2' AS grouping,		
  flight_id,
  count(*) AS num_passengers
  FROM boarding_pass bp
  JOIN booking_leg bl USING(booking_leg_id)
  JOIN booking b USING (booking_id)
  JOIN flight f USING (flight_id)
  WHERE departure_airport='FRA' AND
   actual_departure>scheduled_departure + interval '30 minute'
   AND actual_departure<=scheduled_departure + interval '1 hour'	
   AND actual_departure>'2020-07-01'
   GROUP BY 1,2
