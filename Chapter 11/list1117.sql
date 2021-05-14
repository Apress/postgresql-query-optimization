CREATE TYPE boarding_pass_record AS (
boarding_pass_id int,
booking_leg_id int,
flight_no text,
departure_airport text,
arrival_airport text,
last_name text,
first_name text,
seat text,
boarding_time timestamptz);
