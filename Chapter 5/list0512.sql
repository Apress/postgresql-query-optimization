SELECT bp.update_ts Boarding_pass_issued, 
       scheduled_departure, 
       actual_departure,
       status  
FROM flight f
JOIN booking_leg bl USING (flight_id)
JOIN boarding_pass bp USING (booking_leg_id)
WHERE bp.update_ts  > scheduled_departure + interval '30 minutes'
AND f.update_ts >=scheduled_departure -interval '1 hour'
AND bp.update_ts >='2020-08-16' AND bp.update_ts< '2020-08-20'

