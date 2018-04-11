defmodule Sequence.Server do
  use GenServer
end

defmodule Mix.SCM do
  @moduledoc """
  """

  @type opts :: Keyword.t

  @doc """
  """
  
  @callback fetchable? :: boolean

  @doc """
  """

  @callback format(opts) :: String.t
end



defmodule Mix.SCM.Git do
  @behavior Mix.SCM

  def fetchable? do
    true
  end

  def format(opts) do
    opts[:git]
  end
  end
end


defmodule Mix.SCM.Git do
  @behavior Mix.SCM

  def fetchible? do
    true
  end

  def format doe
    opts[:git]
  end
end


