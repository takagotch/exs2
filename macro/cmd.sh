quote do: :atom
quote do: 1
quote do: 1.0
quote do: [1,2,3]
quote do: "binaries"
quote do: [1,2]
quote do: [do: 1]
quote do: {1,2,3,4,5}
quote do: [a = 1; a + a]
quote do: [ do: 1 + 2, else: 3 + 4]



My.myif 1==2, do: (IO.puts "1 == 2"), else (IO.puts "1 != 2")


Code.eval_quoted(quote do: [1,2,unquote([3,4])])
Code.eval_quoted(quoted do: [1,2,unquote_aplicing([3,4])])
Code.eval_quoted(quoted do: [?a, ?= ,unquote_splicing('1234')])



fragment = quote do: IO.puts("hello")
Code.eval_quoted fragment

fragment = quote do: IO.puts(var!(a))
Code.eval_quoted fragment, [a: "str"]

fragment = Code.string_to_quoted("defmodule A do def b(c) do c+1 end end")
Macro.to_string(fragment)

Code.eval_string("[a, a*b, c]", [a: 2, b: 3, c: 4])

require Macro
Macro.binary_ops

quote do: 1 + 2

Code.eval_quoted {:+, [], [1,2]}

//assert 5 < 4
//explain do: 2 + 3 * 4



