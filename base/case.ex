case File.open("case.ex") do
{ :ok, file } ->
  IO.puts "First LINE: #{IO.read(file, :line)}"
{ :error, reason } ->
  IO.puts "Faile: #{reason}"
end


defmodule Users do
  tky = %{name: "tky", state: "Osaka", likes: "sex" }

  case tky do
    %{state: some_state} = person ->
      IO.puts "#{person.name} lives in #{some_state}"
    _ ->
      IO.puts "NO matches"
  end
end

tky = %{name: "tky", age: 26}
case tky do
  person = %{age: age} when is_number(age) and age >= 21 ->
    IO.puts "#{person.name}"
  _ ->
    IO.puts "No admission"
end


case File.open(user_file_name) do
{:ok, file} ->
  process(file)
{:error, message} ->
  IO.puts :stderr, " #{user_file_name}: #{message} "
end


case File.open("config_file") do
{:ok, file} ->
  process(file)
{:error, message} ->
  raise "Failed: #{message}"
end


file = File.open!("config_file")




