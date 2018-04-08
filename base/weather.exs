//[ timestamp, location_id, temprature, rainfall ]

defmodule WatherHistroy do
  def for_location_27([]), do: []
  def for_location_27([ [time, 27, temp, rain ] | tail]) do
    [ [time, 27, temp, rain] | for_location_27(tail) ]
  end
  def for_location_27([ _ | tail]), do: for_location_27(tail)

end

//for_location_27([ [ time, 27, temp, rain | tail ] ])
//for_location_27([ [ time, _, temp, rain ] | tail ])


def test_data do
  [
    [111111111, 26, 15, 0.125],
    [111111111, 27, 15, 0.45],
    [111111111, 28, 21, 0.25],
    [111111111, 26, 19, 0.0081],
    [111111111, 27, 17, 0.461],
    [111111111, 28, 15, 0.60],
    [111111111, 26, 22, 0.095],
    [111111111, 27, 21, 0.05],
    [111111111, 28, 24, 0.03],
    [111111111, 26, 17, 0.025],
  ]
end


defmodule WeatherHistory do
  def for_location([], _target_loc), do: []

  def for_location([ [time, target_loc, temp, rain ] | tail], target_loc) do
    [ [time, target_loc, temp, rain] | for_location(tail, target_loc) ]
  end

  def for_location([ _ | tail], target_loc), do: for_location(tail, target_loc)

end


defmodule WeatherHistroy do
  def for_location([], target_loc), do: []

  def for_location([ head = [_, target_loc, _, _ ] | tail], target_loc) do
    [ head | for_location(tail, target_loc) ]
  end

  def for_location([ _ | tail], target_loc), do: for_location(tail, target_loc)

end

//def for_location()
//def for_location()
//def for_location()
//  []
//end
//def for_location() do
//  []
//end



