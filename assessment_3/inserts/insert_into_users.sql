DO language plpgsql $$
DECLARE
    counter integer := 0;
BEGIN
	RAISE NOTICE'Start inserting into users starting';

    WITH rows AS (
        INSERT INTO public.users
              (username,   "password",   "name",      client_id)
        VALUES('LyCLECRU', ')Q8Q7a~Utm', 'Aminda',    1),
              ('rIaCyron', 'v-^a6%WUyP', 'Madhav',    2),
              ('lTinTlEb', '%E9xybkGJD', 'Pearle',    2),
              ('twakeTav', '!kG3bBd8tL', 'Sherrie',   2),
              ('tiCEnTEL', '++z!Hz7zwb', 'Gonorilla', 2),
              ('erPErymO', 'FrQ5$h6^vv', 'Tonya',     2),
              ('inJuNING', 'uDkh&w4FRL', 'Darnell',   3),
              ('pERKnopr', 'MC9h6ve!fW', 'Androcles', 3)
              RETURNING id
    )

    SELECT COUNT(*) INTO counter from rows; 
    
    RAISE NOTICE '% rows inserted', counter;
   	RAISE NOTICE 'Finish inserting into users starting';
END
$$;