SELECT flight_id FROM flight f 
  EXCEPT
  SELECT flight_id FROM booking_leg
