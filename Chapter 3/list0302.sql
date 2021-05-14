SELECT flight_no, departure_airport, arrival_airport
FROM flight
  WHERE scheduled_departure BETWEEN
'2020-05-15'  AND  '2020-08-31';
