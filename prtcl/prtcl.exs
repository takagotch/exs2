defprotocol Inspect do
  def inspect(thing, opts)
end




defimpl Inspect, for: PID do
  def inspect(pid, _opts) do
    "#PID" <> IO.iodata_to_binary(pid_to_list(pid))
  end
end

defimpl Inspect, for: REference do
  def inspect(ref, _opts) do
    '#Ref' ++ rest = :erlang.ref_to_list(ref)
    "#Refrence" <> IO.iodata_to_binary(rest)
  end
end





