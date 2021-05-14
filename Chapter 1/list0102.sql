SELECT flight_id
,departure_airport
,arrival_airport
FROM flight
WHERE scheduled_arrival:: date='2020-10-14';