CREATE OR REPLACE FUNCTION select_booking_leg_country (
p_country text,
p_updated timestamptz)
RETURNS SETOF booking_leg_part
AS 
$body$
BEGIN
RETURN QUERY
SELECT departure_airport, booking_id, is_returning
  FROM booking_leg bl
  JOIN flight f USING (flight_id)
  WHERE departure_airport IN 
            (SELECT airport_code
			 FROM airport WHERE iso_country=p_country)
	  AND bl.booking_id IN 
            (SELECT booking_id FROM booking
			WHERE update_ts>p_updated);
			END;
LANGUAGE plpgsql;
