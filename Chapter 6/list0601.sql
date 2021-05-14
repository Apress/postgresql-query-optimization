SELECT d.airport_code AS departure_airport
	 a.airport_code AS arrival_airport
FROM  airport a,
	airport d
WHERE a.airport_code <> d.airport_code
