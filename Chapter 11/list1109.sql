CREATE OR REPLACE FUNCTION text_to_date(input_text text)
  RETURNS date AS
$BODY$
BEGIN
     RETURN input_text::date;
EXCEPTION WHEN OTHERS THEN
  RETURN null::date;
END;
$BODY$
  LANGUAGE plpgsql;
