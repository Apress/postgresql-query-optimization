SELECT departure_airport, 
       booking_id, 
       is_returning
  FROM booking_leg bl
  JOIN flight f USING (flight_id)
  WHERE departure_airport 
        IN (SELECT airport_code
			 FROM airport 
                        WHERE iso_country='US')
