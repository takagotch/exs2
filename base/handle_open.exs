handle_open = fn
  {:ok, file} -> "#{IO.read(file, :line)}"
  {_, error} -> "#{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("Rakefile"))
IO.puts handle_open.(File.open("nonexistent"))


