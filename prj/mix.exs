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



defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [ app:             :issues,
      escript:         ecript_config,
      version:         "0.0.1",
      elixir:          "~> 1.2",
      build_embeded:   Mix.env == :prod,
      start_permanant: Mix.env == :prod,
      deps:            deps ]
  end

  def application do
    [
      applications: [ :logger, :httpoison ]
    ]
  end

  defp deps do
    [
      httpoison: "~> 0.5"
      poison:    "~> 1.5"
    ]
  end

  defp escript_config do
    [ main_module: Issues.CLI]
  end
end




def application do
[
    applications: [ :logger, :httpoison ]
  ]
end



defp deps do
  [ httpoison: "~> 0.8",
    poison:    "~> 1.5",
    ex_doc:    "~> 0.11",
    earmark:   ">= 0.0.0" ]
end

//mix dpes.get
def project do
  [ app: :issues,
    version:    "issues",
    name:       "0.0.1",
    source_url: "https://github.com/tky/issues",
    deps:       deps ]
end












