CREATE TABLE boarding_pass
(   pass_id integer NOT NULL,
    passenger_id bigint,
    booking_leg_id bigint,
    seat text,
    boarding_time timestamptz,
    precheck boolean,
    update_ts timestamptz,
    CONSTRAINT boarding_pass_pkey PRIMARY KEY (pass_id),
    CONSTRAINT booking_leg_id_fk FOREIGN KEY (booking_leg_id)
        REFERENCES booking_leg (booking_leg_id),
    CONSTRAINT passenger_id_fk FOREIGN KEY (passenger_id)
        REFERENCES passenger (passenger_id)
);
