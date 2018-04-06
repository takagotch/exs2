defmodule Msg3 do
end

pid = msg()

send pid, {}
receive do
end

send pid, {}
receive do
end


