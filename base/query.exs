peope = [
  %{ name: "str", height: 1.24 },
  %{ name: "str", height: 1.88 },
  %{ name: "str", height: 1.32 },
  %{ name: "str", height: 2.16 },
  %{ name: "str", height: 1.28 }
]

Io.inspect(for person = %{ height; height } <- people, height > 1.5, do: person)


