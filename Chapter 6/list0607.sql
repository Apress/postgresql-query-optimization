SELECT * FROM flight f WHERE NOT EXISTS 
  (SELECT flight_id FROM booking_leg WHERE flight_id=f.flight_id)
