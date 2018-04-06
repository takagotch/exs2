defmodule Monitor1 do
  import :timer, only: [ sleep: 1 ]

  def sad_function do
    sleep 500
    exit(:boom)
  end
  def run do
    res = msg_monitor(Monitor1, :sad_function, [])
    IO.puts inspect res
    receive do
      msg ->
        IO.puts "MSG REC: #{inspect msg}"
    after 1000 ->
      IO.puts "Noting"
    end
  end
end


