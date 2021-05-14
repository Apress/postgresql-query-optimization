$function$
DECLARE
V_error_message text:=’Error:’;
V_record_id integer;
BEGIN
….
v_error_message:=v_error_message||$em$Record can’t be updated, #$em$||quote_literal(v_record_id);

…
END;
$function$
