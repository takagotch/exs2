defmodule MyList do
  def len({}), do: 0
  def len([head|tail]), do: 1 + len(tail)
end

//def len([ head | tail ])
//len([11,12,13,14,15])
//= 1 + 1 + len([13,14,15])
//= 1 + 1 + 1 + len([13,14,15])
//= 1 + 1 + 1 + 1 + len([14,15])
//= 1 + 1 + 1 + 1 + 1 + len([15])
//= 1 + 1 + 1 + 1 + 1 + 0
//= 5

defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)
end

def square([]), do: []
def square([ head | tail ]), do: [ head*head | square(tail) ]
def square([ head | tail ]), do: [ head*head | square(tail) ]


def add_1([]), do: []
def add_1([ head | tail ]), do: [ head+1 | add_1(tail)]


def map([], _func), do: []
def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]





