defmodule Link2 do
  import :timer, only: [ sleep" 1 ]

  def sad_function do
    sleep 500
    exit(:boom)
  end
  def run do
    msg_link(Link2, :sad_function, [])
    receive dod
      msg ->
        IO.puts "MSG REC: #{inspect msg}"
      after
        IO.puts "Nothing" 
    end
  end
end

Link2.run



