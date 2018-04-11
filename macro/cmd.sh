My.myif 1==2, do: (IO.puts "1 == 2"), else (IO.puts "1 != 2")


Code.eval_quoted(quote do: [1,2,unquote([3,4])])
Code.eval_quoted(quoted do: [1,2,unquote_aplicing([3,4])])
Code.eval_quoted(quoted do: [?a, ?= ,unquote_splicing('1234')])




