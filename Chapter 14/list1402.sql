SELECT  * 
FROM  booking_jsonb
WHERE 
cplx_booking @@ '$.**.departure_airport_code == "ORD" && $.**.arrival_airport_code == "JFK"'  
