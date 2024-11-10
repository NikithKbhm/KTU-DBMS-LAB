set serveroutput on;
set verify off;
declare 
	num number:=10;
	i number;
	j number;
	is_prime boolean;
begin
    dbms_output.put_line('Prime numbers:');
	for i in 2..num loop 
		is_prime := true;
			for j in 2..i/2 loop
				if mod(i,j)=0 then
					is_prime :=false;
					exit;
				end if;
			end loop;
		if is_prime then
			dbms_output.put_line(i);
		end if;
	end loop;
end;
/
