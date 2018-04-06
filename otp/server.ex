//sequence
//{ :reply, current_number, current_number+1 }
//
//def handle_call({:set_number, new_number}, _from, _current_number) do
//  { :reply, current_number, current_number+1 }
//end
//

defmodule Sequence.Server do
  use GenServer

  def handle_call(:next_number, _from, current_number) do
    { :reply, current_number, current_number+1 }
  end
end


def module Sequence.Server do
  use GenServer

  def handle_call(:next_number, _from, current_number) do
    { :reply, curent_number, current_number+1 }
  end

  def handle_cast({:increment_number, delta}, current_number) do
    { :noreply, current_number + delta}
  end
end



def format_status() do
  {data: {{'State', "My current status '#{inspect state}', add "}}}
end


defmodule Sequence.Server do
  use GenServer

  def start_link(current_number) do
    GenServer.start_link(__MODULE__, current_number, name: __MODULE__)
  end

  def next_number do
    GenServer.call __MODULE__, :next_number
  end

  def increment_number(delta) do
    GenServer.cast __MODULE__, (:increment_number, delta)
  end

  def handle_call(:next_number, _from, current_number) do
    { :reply, current_number, current_number+1 }
  end

  def handle_cast({:increment_number, delta}, current_number) do
    { :noreply, current_number + delta}
  end

  def format_status(_reason, {_pdict, state }) do
    {data: [{'State', "CURRENT STATUS '#{inspect state}', add "}]}
  end
end



defmodule Sequence.Server do
  use GenServer

  def start_link(stash_pid) do
    {:ok, _pid} = GenServer.start_link(__MODULE__, stash_pid, name: __MODULE__)
  end
  def next_number do
  end
  def increment_number(delta) do
  end

  #GenServer
  def init(stash_pid)do
    current_number = Sequence.Stash.get_value stash_pid
    { :ok, {current_number, stash_pid} }
  end
  def handle_call(:next_number, _form, {current_number, stash_pid}) do
    { :reply, current_number, {current_number+1, stash_pid} }
  end
  def handle_cast({:increment_number, delta}, {current_number, stash_pid}) do
    { :noreply, {current_number + delta, stash_pid}}
  end
  def terminate(_reason, {current_number, stash_pid}) do
    Sequence.Stash.save_value stash_pid, current_number
  end
end



defmodule Sequence.Server do
  use GenServer

  @vsn "0"
end





