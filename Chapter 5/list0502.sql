SELECT f.flight_no,
       f.scheduled_departure,
	     boarding_time,
	     p.last_name,
	     p.first_name,
	     bp.update_ts as pass_issued,
	     ff.level
  FROM flight f
    JOIN booking_leg bl ON bl.flight_id = f.flight_id
    JOIN passenger p ON p.booking_id=bl.booking_id
	JOIN account a on a.account_id =p.account_id
	JOIN boarding_pass bp on bp.passenger_id=p.passenger_id
	LEFT OUTER JOIN frequent_flyer ff on ff.frequent_flyer_id=a.frequent_flyer_id	
      WHERE f.departure_airport = 'JFK'
            AND f.arrival_airport = 'ORD'
            AND f.scheduled_departure BETWEEN        
        '2020-08-05' AND '2020-08-07'
