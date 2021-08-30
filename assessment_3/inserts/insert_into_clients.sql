DO language plpgsql $$
DECLARE
    counter integer := 0;
BEGIN
	RAISE NOTICE'Start inserting into clients starting';

    WITH rows AS (
        INSERT INTO public.clients
              ("name", address, city, zip_code, state)
        VALUES('Rafael', '4632 Marigold Lane', 'Miami', '33145', 'Florida'),
              ('Nathalie', '3082 Burning Memory Lane', 'Philadelphia', '19103', 'Pennsylvania'),
              ('Belford',  '4880 Forest Avenue', 'New York', '10016', 'New York')
              RETURNING id
    )

    SELECT COUNT(*) INTO counter from rows; 
    
    RAISE NOTICE '% rows inserted', counter;
   	RAISE NOTICE 'Finish inserting into clients starting';
END
$$;