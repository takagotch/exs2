defmodule Spawn1 do
  def greet do
    recieve do
      {sender, msg} ->
        send sender, { :ok, "Hello, #{msg}" }
    end
  end
end


pid = spqwn(Spqwn1, :greet, [])
send pid, {self, "World" }

receive do
  {:ok, message} ->
    IO.puts message
end

send pid, { self, "World" }

