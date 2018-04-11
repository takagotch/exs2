defmodule My do
  defmacro macro(params) do
    IO.inspect param
  end
end

defmodule Test do
  require My

  My.macro :atom
  My.macro 1
  My.macro 1.0
  My.macro [1,2,3]
  My.macro "binaries"
  My.macro { 1, 2 }
  My.macro do: 1

  My.macro { 1,2,3,4,5 }
  # => {:"{}",[line: 20], [1,2,3,4,5]}
  My.macro do: ( a = 1; a+a )
  # => {do:
  #     {:__block__,[],},
  #       [{:=,[line: 22],[{:a,[line: 22],nil},1]},
  #        {:+,[line: 22],[{:a,[line: 22],nil},{:a,[line: 22],nil}]}]}

  My.macro do
    1+2
  else
    3+4
  end
  # => [do: {:+,[line: 24],[1,2]},
  #     else: {:+,[line: 26],{3,4}}]

end




