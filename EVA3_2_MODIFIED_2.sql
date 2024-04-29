delimiter $$
create function agregar_actor(nombre varchar(45), apellidos varchar(45))
returns int deterministic modifies sql data 
begin
	declare resu int;
    declare actorid int;
	select max(actor_id) into actorid from actor;
	set resu = actorid + 1;
    insert into actor(actor_id, first_name, last_name)
    value (resu, nombre, apellido);
    return resu;
end $$
delimiter ;
