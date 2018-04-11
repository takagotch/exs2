defmodule macro(code) do
  quote do
    IO.inspect(code)
  end
end


defmodule My do
  defmacro macro(code) do
    quote do
      IO.inspect(unquote(code))
    end
  end
end




