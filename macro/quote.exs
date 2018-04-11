defmocaro mydef(name) do
  quote do
    def unquote(name) (), do: unquote(name)
  end
end


