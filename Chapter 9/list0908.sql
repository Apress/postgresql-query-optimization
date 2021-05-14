CREATE TABLE airport
(  airport_code char(3)NOT NULL,
    airport_name text NOT NULL,
    city text COLLATE NOT NULL,
    airport_tz text NOT NULL,
    continent text,
    iso_country text,
    iso_region text,
    intnl boolean NOT NULL,
    update_ts timestamptz,
    CONSTRAINT airport_pkey PRIMARY KEY (airport_code)
);
