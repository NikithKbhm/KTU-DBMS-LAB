create function square(a in number) return number is
begin 
	return a*a;
end;
/
declare 
	a number;
	result number;
begin
	a:=5;
	result:= square(a);
	dbms_output.put_line(result);
end;
/
