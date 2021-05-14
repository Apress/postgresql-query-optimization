WITH bk AS (
WITH level4 AS (SELECT * FROM account WHERE 
frequent_flyer_id IN (
	SELECT frequent_flyer_id FROM frequent_flyer WHERE level =4
))
SELECT * FROM booking WHERE account_id IN 
(SELECT account_id FROM level4
) )
SELECT * FROM bk WHERE bk.booking_id IN 
   (SELECT booking_id FROM booking_leg WHERE 
        Leg_num=1 AND is_returning IS false
        AND flight_id IN (
SELECT flight_id FROM flight 
      WHERE 
           departure_airport IN ('ORD', 'MDW')
	     AND scheduled_departure:: DATE='2020-07-04')
);
