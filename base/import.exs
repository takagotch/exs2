defmodule Example do
  def func1 do
    List.flatten [1,[2,3],4]
  end
  def func2 do
    import List, only: [flatten: 1]
    flatten [5, [6, 7], 8]
  end
end

import Mmodule [, only:|except: ]

//import List, only: [ flatten: 1, duplicate: 2 ]

//alias
defmodule Example do
  def compile_and_go(source) do
    alias My.Other.Module.Parser, as: Parser
    alias My.Other.Module.Runner, as: Runner
    source
    |> Parser.parser()
    |> Runner.execute()
  end
end

alias My.Other.Module.Parser
alias My.Other.Module.Runner

//alias My.Other.Module.(Parser, Runner)




