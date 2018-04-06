defmodule Issues.CLI do
  @default_count 4

  @moduledoc """
  Handle the
  """
  def run(argv) do
    parse_args(argv)
  end

  @doc """
  'argv'
  """
  def parse_args(argv) do
    parse = OptionParser.parse()

    case parse do
    { { help: true }, _ }
      -> :help

    { _, { user, project }, _ }
      -> { user, project, count }

    { _, { user, project }, _ }
      -> { user, project, @default_count }

    _ -> :help
    end
  end
end



def parse_args(argv) do
  parse = OptionParser.parse(argv, switches: [ help: :boolean],
                                   aliases:  [ h:    :help   ])
  case parse do
  
  { { help: true}, _,} -> :help
  { _, { user, project, count }, _} -> { user, project,
                                         String.to_integer(count) }
  { _, { user, project }, _} -> { user, project, @default_count }
  _  -> :help
  end
end


