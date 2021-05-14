CREATE OR REPLACE FUNCTION num_passengers(p_airport_code text, p_departure date) RETURNS integer
As $$
BEGIN
RETURN (
	 SELECT count(*) FROM booking_leg bl
		JOIN booking b USING (booking_id)
		JOIN passenger p  USING (booking_id)
	     JOIN flight f USING (flight_id)
WHERE airport_code=p_airport_code
AND scheduled_departure BETWEEN p_date AND p_date +1);
END;
$$ LANGUAGE plpgsql;
