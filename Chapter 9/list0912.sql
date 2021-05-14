CREATE TABLE passenger
(  passenger_id serial,
    booking_id integer NOT NULL,
    booking_ref text,
    passenger_no integer,
    first_name text NOT NULL,
    last_name text NOT NULL,
    account_id integer,
    update_ts timestamptz,
    CONSTRAINT passenger_pkey PRIMARY KEY (passenger_id),
    CONSTRAINT pass_account_id_fk FOREIGN KEY (account_id)
        REFERENCES account (account_id),
    CONSTRAINT pass_booking_id_fk FOREIGN KEY (booking_id)
        REFERENCES booking (booking_id,
    CONSTRAINT pass_frequent_flyer_id_fk FOREIGN KEY (account_id)
        REFERENCES account (account_id) 
);
