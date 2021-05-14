SELECT
city, 
date_trunc('month', scheduled_departure),
sum(passengers)  passengers
FROM airport  a
JOIN flight f ON airport_code = departure_airport
JOIN (
SELECT flight_id, count(*) passengers
FROM   booking_leg l
JOIN boarding_pass_part b USING (booking_leg_id)
	WHERE boarding_time > '07-15-20' 
       and boarding_time <'07-31-20'
GROUP BY flight_id
) cnt
USING (flight_id)
GROUP BY 1,2
ORDER BY 3 DESC  
