CREATE TABLE account
(   account_id SERIAL,
    login text NOT NULL,
    first_name textNOT NULL,
    last_name text NOT NULL,
    frequent_flyer_id integer,
    update_ts timestamp with time zone,
    CONSTRAINT account_pkey PRIMARY KEY (account_id),
    CONSTRAINT frequent_flyer_id_fk FOREIGN KEY
 (frequent_flyer_id)
        REFERENCES frequent_flyer
 (frequent_flyer_id) 
);
