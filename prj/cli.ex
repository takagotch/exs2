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


def run(argv) do
  argv
  |> parse_args
  |> process
end



def process(:help) do
  IO.puts """
  usage: issues <user> <project> { count | #{@default_count} }
  """
  System.halt(0)
end

def process({user, project, _count}) do
  Issues.GithubIssues.fetch(user, project)
end



def process({user, project, count}) do
  Issues.GithubIssues.fetch(user, project)
  |> decode_response
  |> convert_to_list_of_maps
  |> sort_into_ascending_order
end

def sort_into_ascending_order(list_of_issues) do
  Enum.sort list_of_+issues,
            fn il, i2 -> il{"created_at"} <= i2{"created_at"} end
end



defp fake_created_at_list(values) do
  data = for values <- values,
         do: [{"created_at", values}, {"other_data", "xxx"} ]
  convert_to_list_of_maps data
end

import Issues.CLI, only: [ parse_args: 1,
                           sort_into_ascending_order: 1,
			   convert_to_list_of_maps: 1 ]


def process([user, project, count]) do
  Issues.GithubIssues.fetch(user, project)
  |> decode_response
  |> convert_to_list_of_maps
  |> sort_into_ascending_order
  |> Enum.take(count)
end


def process({user, project, count}) do
  Issues.GithubIssues.fetch(user, project)
  |> decode_response
  |> convert_to_list_of_maps
  |> sort_into_ascending_order
  |> Enum.take(count)
  |> print_table_for_columns{"number", "created_at", "title"})
end


def main(argv) do
  argv
    |> parse_args
    |> process
end


