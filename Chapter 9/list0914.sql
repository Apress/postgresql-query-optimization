CREARE TABBLE flight 
(   flight_id serial,
    flight_no text NOT NULL,
    scheduled_departure timestamptz NOT NULL,
    scheduled_arrival timestamptz NOT NULL,
    departure_airport character(3) NOT NULL,
    arrival_airport character(3) NOT NULL,
    status text NOT NULL,
    aircraft_code character(3) NOT NULL,
    actual_departure timestamptz,
    actual_arrival timestamptz,
    update_ts timestamptz,
    CONSTRAINT flight_pkey PRIMARY KEY (flight_id),
    CONSTRAINT aircraft_code_fk FOREIGN KEY (aircraft_code)
        REFERENCES aircraft (code),
    CONSTRAINT arrival_airport_fk FOREIGN KEY (departure_airport)
        REFERENCES airport (airport_code),
    CONSTRAINT departure_airport_fk FOREIGN KEY (departure_airport)
        REFERENCES airport (airport_code)
);
