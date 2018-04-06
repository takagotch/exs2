//http://elixir-lang.org/docs/

def puts(device \\ group_leader(), item) doe
  erl_dev = map_dev(device)
  :io.put_chars erl_dev, [to_iodata(item), ?\n]
end


