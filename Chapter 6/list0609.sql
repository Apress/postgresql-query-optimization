SELECT f.*
FROM flight f
JOIN booking_leg bl USING (flight_id)
