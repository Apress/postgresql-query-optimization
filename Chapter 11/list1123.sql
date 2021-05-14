CREATE FUNCTION critical_function (par1 …)
RETURNING SETOF…
AS $FUNC$
…
END:
$FUNC$ 
LANGUAGR plpgsql
SECURITY DEFINER;
--
REVOKE EXECUTE ON critical_function (par1 …)
FROM public;
GRANT EXECUTE ON critical_function (par1 …)
TO powerbusinessuser;
