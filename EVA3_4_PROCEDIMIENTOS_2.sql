delimiter $$
create procedure consultar_actor(in actorid int)
begin
	select * from actor
    WHERE actor_id = actorid;
end$$
delimiter ;