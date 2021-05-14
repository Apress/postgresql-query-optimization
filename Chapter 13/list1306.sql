CREATE OR REPLACE
FUNCTION array_transport (all_items  anyarray) RETURNS SETOF text
 RETURNS NULL ON NULL INPUT
LANGUAGE plpgsql AS
$body$
DECLARE
  item  record;
BEGIN
FOREACH item IN array all_items
LOOP
   RETURN NEXT(to_json(item)::text);
   END LOOP;
END;
$body$;
