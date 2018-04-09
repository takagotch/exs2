defmodule Times do
  def double(n) do
    n * 2
  end
end

//def double (n), do: n * 2
//def greet(greeting, name), do: (
//  IO.puts greeting
//  IO.puts "#{name}"
//)

defmodule Times do
  def double(n), do: n * 2
end

defmodule Times, do: (def double(n), do: n*2)

//fanction(0) 1
//factorial(n) n * factorial(n-1)

defmodule Factorial do
  def of(0), do: 1
  def of(n), do: n * of(n-1)
end




