Node.self

iex --name wibble@machine-n.local

iex --sname wobble

iex --sname node_one
iex --sname node_two


Node.list [:"node_two@machine-n"]

func = fn -> IO.inspect Node.self end
spqwn(func)
Node.spawn(:"node_one@machine-n", func)
Node.spqwn(:"node_two@machine-n", func)


Node.list
Node.connect :"node_one@machine-n"
Node.list [:"node_one@machine-n"]


iex --sname one --cookie chocolate-chip

Node.get_cookie :"chocolate-chip"



iex --sname node_one --cookie cookie-one
iex --sname node_two --cookie cookie-two

Node.connect :"node_two@machine-n" false





node % iex --sname one
node % iex --sname two

iex --sname one
iex --sname two
Node.connect(:"one@machine-n")
:global.register_name(:two, :erlang.group_leader)

two = :global.whereis_name :two
IO.puts(two, "Hello")
IO.puts(two, "World!")








