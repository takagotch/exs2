
c("spawn-basic.ex") [SpawnBasic]
SpawnBasic.greet Hello
SpawnBasic.greet Hello

c("spawn1.ex")
c("spawn2.ex")
c("spawn3.ex")
c("spawn4.ex")


elixir -r chain.ex -e "Chain.run(10)"
elixir -r chain.ex -e "Chain.run(100)"
elixir -r chain.ex -e "Chain.rn(1_000)"
elixir -r chain.ex -e "Chain.run(10_000)"
elixir -r chain.ex -e "Chain.run(400_000)"


elixir --erl "+P 1000000" -r chain.ex -e "Chain.run(400_000)"
elixir --erl "+P 10000000" -r chain.ex -e "Chain.run(1_000_000)"



elixir -r link1.exs
elixir -r link2.exs
elixir -r link3.exs
elixir -r monitor.exs

c("pmap.exs")


elixir fib.exs

elixir fib_agent.exs





