CREATE INDEX passenger_j_booking_ref ON passenger_json ((passenger_info ->> 'booking_ref'));