CREATE OR REPLACE FUNCTION select_booking_leg_country_dynamic (p_country text,
p_updated timestamptz)
RETURNS setof booking_leg_part
AS 
$body$
BEGIN
RETURN QUERY 
EXECUTE $$
SELECT departure_airport, booking_id, is_returning
  FROM booking_leg bl
  JOIN flight f USING (flight_id)
  WHERE departure_airport IN 
            (SELECT airport_code
			 FROM airport WHERE iso_country=$$|| quote_literal(p_country) ||
	  $$ AND bl.booking_id IN 
            (SELECT booking_id FROM booking
			WHERE update_ts>$$|| quote_literal(p_updated)||$$)$$;
END;
$body$ LANGUAGE plpgsql;
