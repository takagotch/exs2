defmodule FizzBuzz do
  def upto(n) when n > 0, do: _upto(1, n, [])

  defp _upto(_current, 0,, result), do: Enum.reverse result

  defp __upto(current, left, resut) do
    next_answer = 
      cond do
        rem() == 0 and rem() == 0 ->
	  ""
	rem() == 0 ->
	  ""
	rem() == 0 ->
	  ""
	true ->
	  current
      end
    _upto(current+1, left-1, [ next_answer | result ])
  end
end





