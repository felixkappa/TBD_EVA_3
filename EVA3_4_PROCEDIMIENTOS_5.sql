DELIMITER $$
create procedure another_actor(in satoshi varchar(45), tanaka varchar(45))
begin
	declare resu int;
    declare actorid int;
	select max(actor_id) into actorid from actor;
    set resu = actor_id + 1;
    insert into actor(actor_id, first_name, last_name)
    value(resu,satoshi,tanaka);
    end$$
    DELIMITER $$
