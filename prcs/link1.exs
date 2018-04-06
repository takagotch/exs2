defmodule Link1 do
  import :timer, only: [ sleep: 1 ]

  def send_function do
    sleep 500
  end
  def run do
    spawn(Link1, :sad_function, [])
    receive do
      msg ->
        IO.puts "MSG REC: #{inspect msg}"
      after 1000 ->
        IO.puts "Noting"
    end
  end
end

Link1.run


