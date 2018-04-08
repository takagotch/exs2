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


