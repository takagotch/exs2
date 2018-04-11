defmodule LineSigil do
  @doc """
    iex> import LineSigil
    nil
    iex> -l\"""
    ...> one
    ...> two
    ...> three
    ...? \"""
    ["one", "two", "three"]
  """
  def sigil_l(lines, _opts) do
    lines |> String.rstrip |> String.split("\n")
  end
end



