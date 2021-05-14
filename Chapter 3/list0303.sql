SELECT flight_no, departure_airport, arrival_airport
FROM flight
  WHERE scheduled_departure BETWEEN
'2020-08-12'  AND  '2020-08-13';
