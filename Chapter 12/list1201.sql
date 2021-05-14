DECLARE
v_sql text;
cnt int;
BEGIN
v_sql:=$$SELECT count(*) FROM booking 
  WHERE booking_ref='0Y7W22'$$;
EXECUTE v_sql into cnt;
