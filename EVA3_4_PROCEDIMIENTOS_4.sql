delimiter $$
create procedure consultarfa(in apellido varchar(45), out kappa int)
begin
    select count(*) into kappa from actor
    WHERE last_name = apellido	;
end$$
delimiter ;