CREATE TYPE booking_record_basic AS
(booking_id bigint,
 booking_ref text,
    booking_name text ,
    account_id integer,
    email text );

CREATE OR REPLACE FUNCTION select_booking (p_email text,
p_dep_airport text,
p_arr_airport text,
p_dep_date date,
p_flight_id int)
RETURNS SETOF booking_record_basic
AS
$func$
BEGIN
RETURN QUERY
SELECT DISTINCT b.booking_id, b.booking_ref, 
booking_name, account_id, email
FROM booking b JOIN 
 booking_leg bl USING (booking_id)
JOIN flight f USING (flight_id)
WHERE (p_email IS NULL OR lower(email) LIKE p_email||'%')
AND (p_dep_airport IS NULL OR departure_airport=p_dep_airport)
AND (p_arr_airport IS NULL OR arrival_airport=p_arr_airport)
AND (p_flight_id IS NULL OR bl.flight_id=p_flight_id);
END;
$func$ LANGUAGE plpgsql;
