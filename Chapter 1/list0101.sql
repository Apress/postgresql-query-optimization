SELECT flight_id
,departure_airport
,arrival_airport
FROM flight
WHERE scheduled_arrival BETWEEN 
'2020-10-14' AND '2020-10-15';
