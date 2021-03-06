mix new sequence

iex -S mix

//def handle_call({:set_number, new_number}, _from, _current_number) do
//{ :reply, new_number, new_number }
//end
//
//def handle_call({:factors, number}, _, _) do
//  { :reply, { :factors_of, number, factors(number)}, [] }
//end
//

GenServer.call(pid, {:set_number, 999})

r Sequence.Server
{ :ok, pid } = GenServer.start_link(Sequence.Server, 100)
GenServer.call(pid, :next_number)
GenServer.call(pid, :next_number)

{:ok,pid} = GenServer.start_link(Sequence.Server, 100, [debug: {:statistics}])
GenServer.call(pid, :next_number)
GenServer.call(pid, :next_number)
:sys.statistics pid, :get

:sys.trace pid, true
GenServer.call(pid, :next_number)
:sys.trace pid, false
GenServer.call(pid, :next_number)

:sys.get_status.pid


:sys.get_status pid
:observer.start()


{ :ok, pid } = GenServer.start_link(Sequence.Server, 100, name: :seq)
GenServer.call(:seq, :next_number)
GenServer.call(:seq, :next_number)
:sys.get_status :seq


mix new --sup sequence

iex -S mix
Sequence.Server.increment_number 3
Sequence.Server.next_number

Sequence.Server.increment_number "cat"
Sequence.Server.next_number
Sequence.Server.next_number


iex -S mix
Sequence.Server.next_number
Sequence.Server.increment_number 100
Sequence.Server.next_number
Sequence.Server.increment_number "cause it to crash"
Sequence.Server.next_number
Sequence.Server.next_number




iex -S mix
Sequence.Server.next_number




//idx -S mix
//mix.exs sequence.app
mix compile



mix do deps.get, deps.compile
mix release

ssh localhost mkdir ~/deploy
scp rel/sequence/releases/0.0.1/sequence.tar.gz localhost:deploy
ssh localhost tar -x -f ~/deploy/sequence.tar.gz -C ~/deploy

ssh -t localhost ~/deploy/bin/sequence console
Sequence.Server.next_number
Sequence.Server.next_number

mix release

ssh localhost mkdir deploy/releases/0.0.2
scp rel/sequence/release/0.0.2/sequence.tar.gz localhost:deploy/releases/0.0.2

ssh localhost ~/deploy/bin/sequence upgrade 0.0.2
Sequence.Server.next_number
Sequence.Server.next_number

shh localhost ~/deploy/bin/sequence downgrade 0.0.1
Sequence.Server.next_number
Sequence.Server.next_number

ssh localhost ~/deploy/bin/sequence upgrade 0.0.2
Sequence.Server.next_number
Sequence.Server.increment_number 10
Sequence.Server.next_number
Sequence.Server.next_number


mix release
ssh localhost mkdir ~/deploy/releases/0.0.3/
scp rel/sequence/releases/0.0.3/sequence.tar.gz localhost:deploy/releases/0.0.3/

ssh localhost ~/deploy/bin/sequence upgrade 0.0.3
Sequence.Server.next_number
Sequence.Server.increment_number 10
Sequence.Server.next_number
Sequence.Server.next_number









