defmodule Sequence do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # worker(Sequence.Worker, [arg1, arg2, arg3])
    ]

    opts = [strategy: :one_for_one, name: Sequence.Supervisor]
    Supervisor.start_link(children, opts)
  end
end


def start(_type, _args) do
  import Supervisor.Spec, warn: false

  children = [
    worker(Sequence.Server, [123])
  ]

  opts = [strategy: :one_for_one, name: Sequence.Supervisor]
  [:ok, _pid] = Supervisor.start_link(children, opts)
end


defmodule Sequence do
  use Application

  def start(_type, _args) do
    {:ok, _pid} = Sequence.Supervisor.start_link(123)
  end
end


defmodule Sequence do
  use Application

  def start(_type, initial_number) do
    Sequence.Supervisor.start_link(initial_number)
  end
end




