--{ fib test

create or replace function fib(integer)
    returns integer  language plpgsql
as $_$ begin
    if $1 in (0,1) then
        return 1;
    else
        return fib($1 - 1) + fib($1 - 2);
    end if;
end; $_$;

--}

