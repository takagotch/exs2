myif <<condition>> do
  <<evaluate if true>>
else
  <<evaluate if false>>
end


myif <<condition>>
  do: <<evaluate if true>>
  else: <<evaluate if false>>

My.myif 1==2, do: (IO.puts "1 == 2"), else: (IO.puts "1 != 2")



