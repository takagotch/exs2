defmodule Boom do
  def start(n) do
    try do
      raise_error(n)
    rescue
      [ FunctionClauseError, RuntimeError ] ->
        IO.puts "ERR"
      error in [ArithmeticError] ->
        IO.inspect error
	IO.puts "str ERR"
	reraise "str", System.stacktrace
      other_errors ->
        IO.puts "#{inspect other_errors}"
      after
        IO.puts "DONE!"
    end
  end

  defp raise_error(0) do
    IO.puts "ERR"
  end

  defp raise_error(1) do
    IO.puts "str"
    1 / (val-1)
  end

  defp raise_error(2) do
    IO.puts "str"
    raise_error(99)
  end

  defp raise_error(3) do
    IO.puts "str"
    File.mkdir!("/not_allowed")
  end
end




