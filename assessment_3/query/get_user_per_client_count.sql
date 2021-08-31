-- Display the “number of users” 
-- and “client name” for each client

select count(x."user's name") as "number of users",
       x."user's client name" as "client name"
from (
	SELECT u."name" as "user's name",
		   u.id as "user's id", 
		   c."name" as "user's client name" 
	FROM   clients c,
	       users u
	where  u.client_id = c.id
) x
group by x."user's client name";