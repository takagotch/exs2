defmodule Greeter do
  def for(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_) -> "str"
    end
  end
end

mr_valim = Greeting.for("Tky", "Oh")

IO.puts mr_valim.("Tky")
IO.puts mr_valim.("tky")


//Enum.map [1,2,3,4], fn x -> x + 2 end
//Enum.each [1,2,3,4], fn x -> IO.inspect x end



