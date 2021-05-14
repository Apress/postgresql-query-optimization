SELECT flight_id, scheduled_departure
   FROM flight f
   JOIN airport a
       ON departure_airport=airport_code
          AND iso_country='US'
;