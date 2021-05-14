SELECT DISTINCT b.booking_id, b.booking_ref, 
b.booking_name, b.email
FROM booking b
JOIN  booking_leg bl USING (booking_id)
JOIN flight f USING (flight_id)
WHERE lower(email) like 'lawton510%'
AND departure_airport='JFK';
