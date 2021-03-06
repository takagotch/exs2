defmodule My do
  defmacro if(condition, clauses) do
    do_clause = Keyword.gt(clauses, :do, nil)
    else_clause = Keyword.get(clauses, :else, nil)
    quote do
      case unquote(condition) do
        val when val in [false, nil] -> unquote(else_clause)
	                             -> unquote(do_clause)
      end
    end
  end
end

defmodule Test do
  require My
  My.if 1==2 do
    IO.puts "1==2"
  else
    IO.puts "1 != 2"
  end
end

/*
defmodule Test do
  require Times
  Times.times_n(3)
  Times.times_n(4)
end

IO.puts Test.times_3(4)
IO.puts Test.times_4(5)
*/


