CREATE OR REPLACE FUNCTION num_passengers(p_airport_code text, p_departure date) RETURNS integer
AS
$$BEGIN
RETURN (
	SELECT count(*) FROM booking_leg bl
		JOIN booking b USING (booking_id)
		JOIN passenger p USING (booking_id)
            JOIN flight f USING (flight_id)
WHERE departure_airport=p_airport_code
AND scheduled_departure BETWEEN p_departure AND p_departure +1)
;
END;
$$ LANGUAGE plpgsql;
