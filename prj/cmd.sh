mix help
mix help deps
mix new issues


mix test

mix run -e 'Issues.CLI.run(["-h"])'
mix run -e 'Issues.CLI.run(["elixir-lang", "elixir"])'
mix deps
mix deps.get
mix deps

iex -S mix
Issues.GithubIssues.fetch("elixir-lang", "elixir")


mix test

mix escript.build
./issue elixir-lang elixir 3


Issues.CLI.process {"elixir-lang", "elixir", 1}


mix test
//@doc """
//
//Issues.TableFormatter.printable("a")
//Issues.TableFormatter.printable(99)
//
//"""
//def printable(str) when is_binary(str), do: str
//def printable(str), do: to_string(str)

mix test test/doc_test.exs

mix deps.get
mix doc






