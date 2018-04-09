
defmodule Example do
  def func(p1, p2 \\ 2, p3 \\ 3, p4) do
    IO.inspect [p1, p2, p3, p4]
  end
end

Example.func("a", "b")
Example.func("a", "b", "c")
Example.func("a", "b", "c", "d")

/*
def func(p1, p2 \\ 2, p3 \\ 3, p4) do
  IO.inspect [p1, p2, p3, p4]
end

def func(p1, p2) do
  IO.inspect [p1, p2]
end

*/

defmodule DefaultParams1 do
  def func(p1, p2 \\ 123) do
    IO.inspect [p1, p2]
  end

  def func(p1, 99) do
    IO.puts "99"
  end
end


defmodule Parmas do
  def func(p1, p2 \\ 123)
    "#{p2}"
  end

  def func(p1, p2) do
    "#{p1} #{p2}"
  end
end

IO.puts Params.func(99)
IO.puts Params.func(99, "str")
IO.puts Params.func([99])
IO.puts Params.func([99], "str")


