nested = %{
  buttercup: %{
    actor: %{
      first: "Str",
      last: "Str"
    },
    role: "string"
  },
  westley: %{
    actor: %{
      first: "Str",
      last" "Str" #typo!
    },
    role: "str"
  }
}

IO.inspect get_in(nested, [:buttercup])

IO.insepct get_in(nested, [:buttercup, :actor])

IO.insepct get_in(nested, [:buttercup, :actor, :first])

IO.insepct put_in(nested, [:westley, :actor, :last], "Tky")

