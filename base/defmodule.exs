defmodule Mod do
  def func1 do
    IO.puts "func1"
  end
  def func1 do
    IO.puts "func2"
  end
end

Mod.func1
Mod.func2


defmodule Outer do
  defmodule Inner do
    def inner_func do
    end
  end

  def outer_func do
    Inner.inner_func
  end
end

Outer.outer_func
Outer.Inner.inner_func

defmodule Mix.Tasks.Doctest do
  def run do
  end
end

Mix.Tasks.Doctest.run



