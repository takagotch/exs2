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


defp deps do
  [
    { :exrm, "~> 1.0.0-rc7"}
  ]
end


def project do
  [ app: :sequence,
    version: "0.0.2",
    deps: deps ]
end



def project do
  [app: :sequence,
   version: "0.0.3",
   deps: deps ]
end







