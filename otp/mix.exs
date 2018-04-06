//.app mix.exs

def application do
  [mod: {Sequence, [] }]
end

def application do
  [mod: { Sequence, 456 }]
end


def application do
  [
    mod: { Sequence, 456 },
    registerd: { Sequence.Server }
  ]
end




