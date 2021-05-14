SELECT * FROM flight WHERE flight_id NOT IN 
  (SELECT flight_id FROM booking_leg)
