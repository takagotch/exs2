defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts "#{x} num"
  end
  def what_is(x) when is_list(x) do
    IO.puts "#{inspect(x)} list"
  end
  def what_is(x) when is_atom(x) do
    IO.puts "#{x} atom"
  end
end

Guard.what_is(99)
Guard.what_is(:cat)
Guard.what_is([1,2,3])



