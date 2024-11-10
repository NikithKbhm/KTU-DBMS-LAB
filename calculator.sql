set serveroutput on
set verify off
declare 
	num1 number:= &num1;
	num2 number:= &num2;
	operator char(1):= '&operator';
	result number;
begin 
	case operator
		when '+' then
			result :=num1+num2;	
		when '-' then 
			result := num1-num2;
		when '*' then
			result :=num1*num2;
		when '/' then
            if num2 = 0 then
            	dbms_output.put_line('Division by 0 is not possible!');
				return;
			else
			result :=num1/num2;
			end if;
		else
				dbms_output.put_line('invalid operation');
				return;
		end case;

	dbms_output.put_line('Result is : '||result);
	end;
	/
