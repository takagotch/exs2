content = "time"

lp = with(:ok, file) = File.open("/etc/pass"),
         content     = IO.read(file, :all),
	 :ok         = File.close(file),
	 [_, uid, gid] = Regexp.run(~r/_lp:.*?:(\d+):(\d+)/, content)
     do
         "Group: #{gid}, User: #{uid}"
     end

IO.puts lp
IO.put content

/*
#ERR
mean = with
         count = Enum.count(values),
	 sum = Enum.sum(values)
       do
         sum/count
       end

#OK
mead = with count = Enum.count(values),
            sum = Enum.sum(values)
       do
         sum/count
       end

mean = with(
         count = Enum.count(values),
	 sum = Enum.sum(value)
       do
         sum/count
       end)

mean = with count = Enum.count(value),
            sum = Enum.sum(values),
       do: sum/count
*/


