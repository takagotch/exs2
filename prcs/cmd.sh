
c("msg-basic.ex") [MsgBasic]
MsgBasic.greet Hello
MsgBasic.greet Hello

c("msg1.ex")
Hello, World!

c("msg2.ex")
Hello, World!


c("msg3.ex")
Hello, World!

c("msg4.ex")

elixir -r chain.ex -e "Chain.run(10)"

elixir -r chain.ex -e "Chain.run(100)"

elixir -r chain.ex -e "Chain.rn(1_000)"

elixir -r chain.ex -e "Chain.run(10_000)"

elixir -r chain.ex -e "Chain.run(400_000)"

elixir --erl "+P 1000000" -r chain.ex -e "Chain.run(400_000)"

elixir --erl "+P 10000000" -r chain.ex -e "Chain.run(1_000_000)"


