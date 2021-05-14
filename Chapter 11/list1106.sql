CREATE OR REPLACE FUNCTION num_passengers(p_flight_id int) RETURNS integer
AS
$$BEGIN
RETURN (
	SELECT count(*) FROM booking_leg bl
		JOIN booking b USING (booking_id)
		JOIN passenger p
		USING (booking_id)
WHERE flight_id=p_flight_id);
END;
$$ LANGUAGE plpgsql;
