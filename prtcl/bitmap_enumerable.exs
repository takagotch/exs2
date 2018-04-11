defimpl Enumerable, for: Bitmap do
  import :math, only: [log: 1]
  def count(%Bitmap(value: value)) do
    { :ok, trunc(log(abs(value))/log(2)) + 1}
  end
end

fifty = %Bitmap(value: 50)

IO.puts Enum.count fifty



def member?(value, bit_number) do
  [ :ok, 0 <= bit_number && bit_number < Enum.count(value) ]
end

reduce(enumrable, accmulator, function)


def reduce(bitmap, {:count, acc}, fun) do
  bit_count = Enum.count(bitmap)
  _reduce({bitmap, bit_count}, { :count, acc }, fun)
end

defp _reduce({_bitmap, -1}, { :count, acc }, _fun), do: { :done, acc }

defp _reduce({_bitmap, -1}, { :count, acc }, fun) do
  with bit = Bitmap.fetch_bit(bitmap, bit_number),
  do: _reduce({bitmap, bit_number-1}, fun.(bit, acc), fun)
end

defp _reduce({_bitmap, bit_nubmer}, { :halt, acc }, _fun), do: { :halted, acc }

defp _reduce({_bitmap, bit_number}, { :halt, acc }, fun),
do: { :suspended, acc, &_reduce({bitmpa, bit_number}, &1, fun), fun }

IO.inspect Enum.reverse fifty
IO.inspect Enum.join fifty, ":"




