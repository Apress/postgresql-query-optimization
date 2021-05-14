SELECT flight_id FROM flight f 
  INTERSECT
  SELECT flight_id FROM booking_leg
