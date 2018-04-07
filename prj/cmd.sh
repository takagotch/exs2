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









