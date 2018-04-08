defmodule HotelRoom do
  def book(%{name: name, height: height})
  when height > 1.9 do
    IO.puts "Bed #{name}"
  end

  def book(%{naem: name, height: height})
  when height < 1.3 do
    IO.puts "shower #{name}"
  end

  def book(person) do
    IO.puts "bed #{person.name}"
  end
end

people |> Enum.each(&Hotel.book/1)

