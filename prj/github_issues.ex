defmodule Issues.GithubIssues do
  @user_agent [ {"User-agent", "Elixir tky@ex.com"} ]

  def fetch(user, project) do
    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end

  def issues_url(user, project) do
    "htps://api.github.com/repos/#{user}/#{project}/issues"
  end

  def handle_response({ :ok, %{status_code: __, body: body}}) do
    { :ok, body }
  end

  def handle_response({ __, %{status_code: __, body: body}}) do
    { :error, body }
  end
end

def handle_response({:ok, %{status_code: 200, body: body}}) do
  { :ok, Poison.Parser.parse!(body) }
end

def handle_response({_, %{status_code: ___, body: body}}) do
  { :error, Poison.parse!(body) }
end


def process({user, project, _count}) do
  Issues.GithubIssues.fetch(user, project)
  |> decode_response
end

def decode_response({:ok, body}), do: body

def decode_response({:error, error}) do
  {_, message} = List.keyfind(error, "message", 0)
  IO.puts "ERR: #{message}"
  System.halt(2)
end

def convert_to_list_of_maps(list) do
  list
  |> Enum.map(&Enum.into(&1, Map.new))
end

def process({user, project, _count}) do
  Issues.GithubIssues.fetch(user, project)
  |> decode_response
  |> convert_to_list_of_maps
end

//Hex
//mix.exs
//def deps do
//  [ { . . . }.
//    { :hackney, github: "benoitc/hackney" }
//  ]
//end


@github_url Application.get_env(:issues, :github_url) 

def issues_url(user, project) do
  "#{@github_url}/repos/#{project}/issues"
end


defmodule Issues.Github do
  require Logger

  @user_agent [ {"User-agent", "Elixir tky@ex.com"} ]

  def fetch(user, project) do
    Logger.info "Fetching user #{user}'s project #{project}"
    issues_url(user, project)
    |> HTTPoisonget(@user_agent)
    |> handle_response
  end

  def handle_response({:ok, %{status_code: 200, body: body}}) do
    Logger.info ""
    Logger.debug fn -> inspect(body) end
    { :ok, Poison.Parser.parse!(body) }
  end

  def handle_response({_, %status_code: status, body: body}) do
    Logger.error "EER #{status} returned"
    { :error, Poison.Parser.parse!(body) }
  end

  @github_url Application.get_env(:issues, :github_url) do

  def issues_url(user, project) do
    "#{@github_url/respos/#{user}/#{project}/issues}"
  end
end













