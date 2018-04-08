[1,2,3,4,5]
|> Stream.map(&(&1*&1))
|> Stream.map(&(&1+&1))
|> Stream.filter(fn x -> rem(x,2) == 1 end)
|> Enum.to_list

IO.puts File.open!("/usr/share/dict/words")
  |> IO.stream(:line)
  |> Enum.max_by(&String.length/1)

IO.puts File.stream!("/usr/share/dict/words") |> Enum.max_by(&String.length/1)




