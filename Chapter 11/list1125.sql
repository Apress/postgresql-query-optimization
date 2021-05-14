CREATE PROCEDURE load_with_transform()
AS $load$
DECLARE
v_cnt int;
v_record record;
BEGIN
FOR v_record IN (SELECT * FROM data_source) LOOP
  PERFORM transform (v_rec.id);
  CALL insert_data (v_rec.*);
  v_cnt:=v_cnt+1;
IF v_cnt>=50000 THEN
  COMMIT;
  v_cnt:=0;
END IF;
END LOOP;
COMMIT;
END;
$load$ LANGUAGE plpgsql;
