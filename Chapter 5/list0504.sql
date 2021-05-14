SELECT * FROM flight
WHERE departure_airport='LAX'  
AND update_ts BETWEEN '2020-08-16' AND '2020-08-18'
AND status='Delayed'
AND scheduled_departure BETWEEN '2020-08-16' AND '2020-08-18'
