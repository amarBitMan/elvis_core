-module(fail_no_throw).

-export([f/0]).

f() ->
    thro(exit, 2),
    throw = throw,
    another:function(),
    andanother:one_with(throw),
    io:f("~p", [throw(this)]) =:= ok andalso
    begin
        throw(that)
    end,
    % throw
    _ = "throw",
    erlang:throw(exit).

thro(E, _) ->
    throw(E).
