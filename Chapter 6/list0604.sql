SELECT * FROM flight WHERE flight_id IN 
  (SELECT flight_id FROM booking_leg)
