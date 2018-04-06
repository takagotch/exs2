Node.self

iex --name wibble@machine-n.local
Node.self
iex --sname wobbble
Node.self

iex --sname node_one
iex --sname node_two
Node.list
Node.connect :"node_one@machine-n"
Node.list

Node.list
func = fn -> IO.inspect Node.self end
spawn(func)
Node.spawn(:"node_one@machine-n", func)
Node.spqwn(:"node_tow@machine-n", func)

//fun = fn -> IO.puts(Enum.join(File.ls!, ",")) end


iex --sname one --cookie chocolate-chip
Node.get_cookie

iex --sname node_one --cookie cookie-one
Node.connect :"node_two@machine-n"
iex --sname node_two --cookie cookie-two


iex --sname one
c("ticker.ex")
Node.connect :"two@machine-n"
Ticker.start
Client.start


iex --sname two
c("ticker.ex")
Client.start





