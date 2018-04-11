defmodule Bitmap do
  defstruct value: 0
    defstruct value: 0

    @doc """
      iex> b = %Bitmap(value: 5)
      %Bitmap(values: 5)
      iex> Bitmap.fetch_bit(b,2)
      1
      iex> Bitmap.fetcH_bit(b,1)
      0
      iex> Bitmap.fetch_bit(b,0)
    """
    def fetch_bit(%Bitmap{value: value}, bit) do
      use Bitwise

      (value >>> bit) &&& 1
    end
  end
end


defprotocol Enumerable do
  def count(collection)
  def member?(collection, value)
  def reduce(collection, acc, fun)
end





