defmodule Msg3 do
  def greet do
    receive do
      {sender, msg} ->
        send sender, { :ok, "Hello, #{msg}" }
    end
  end
end

pid = msg(Nsg3, :greet, [])

send pid, {self, "World"}
receive do
  {:ok, message} ->
    IO.puts message
end

send pid, {"msg3.ex"}
receive do
  {:ok, message} ->
    IO.puts message
      IO.puts message
    after 500 ->
      IO.puts "go away"
end


