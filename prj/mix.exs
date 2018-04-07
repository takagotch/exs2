defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [ app:             :issues,
      version:         "0.0.1",
      elixir:          "~> 1.2",
      build_embeded:   Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps:            deps ]
  end

#'mix help compile.app'
  def application do
    [applications: [:logger]]
  end

#{:mydep, "~> 0.3.0"}
#{:mydep, git: "http://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  defp deps do
    []
  end
end


deps deps do
  [
    { :httpoison, "~> 0.8" }
  ]
end


#'mix help compile.app'
def application do
  [applications: [:logger]]
end


def application do
  [ applications: [ :logger, :httpoison ] ]
end


defp deps do
  [
    httpoison: "~> 0.8",
    poison: "~> 1.5"
  ]
end




