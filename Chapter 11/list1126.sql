CREATE PROCEDURE multiple_blocks AS
$mult$
BEGIN
---case #1
  BEGIN
  <…>
  EXCEPTION WHEN OTHERS THEN
    RAISE NOTICE ‘CASE#1”;
  END; --case #1
BEGIN
   ---case #2
  BEGIN
  <…>
  EXCEPTION WHEN OTHERS THEN
    RAISE NOTICE ‘CASE#2”;
  END; --case #2
BEGIN
---case #3
  BEGIN
  <…>
  EXCEPTION WHEN OTHERS THEN
    RAISE NOTICE ‘CASE#3”;
  END; --case #3
END; ---proc
$mult$ LANGUAGE plpbsql;
