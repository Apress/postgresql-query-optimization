CREATE VIEW flight_departure as
SELECT bl.flight_id, 
       departure_airport,
	 coalesce(actual_departure, scheduled_departure)::date
       AS  departure_date,
       count(DISTINCT passenger_id) AS num_passengers
 FROM booking b
 JOIN booking_leg bl USING (booking_id)
 JOIN flight f USING (flight_id)
 JOIN passenger p USING (booking_id)
GROUP BY 1,2,3
