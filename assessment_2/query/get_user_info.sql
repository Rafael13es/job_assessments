-- Query that takes the data
-- from 2 tables and outputs 
-- “user’s name”, “user’s id” 
-- and “user’s client name”.

SELECT u."name" AS "user's name",
       u.id     AS "user's id",
       c."name" AS "user's client name"
FROM   public.clients c, 
       public.users   u
WHERE  u.client_id = c.id;