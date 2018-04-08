if 1 == 1, do: "true part", else: "false part"

if 1 == 2, do: "true part", else: "false part"

if 1 == 1 do
"true part"
else
"false part"
end

unless 1 == 1, do: "error", else: "OK"
unless 1 == 2, do: "OK", else: "error"
unless 1 == 2, do
"OK"
else
"error"
end


c("fizzbuzz.ex")
FizzBuzz.upto(20)

raise "ERR"
raise RuntimeError
raise RuntimeError, message: "override message"



[ 'str' | 'str' ]

b = <<  1, 2, 3 >>
byte_size b
bit_size b
b = << 1:size(2), l::size(3) >>
byte_size b
byte_size b
int = << 1 >>
float = << 2.5 :: float >>
mix = << int :: binary, float :: binary >>
<< sign::size(1), exp::size(11), mantissa::size(52) >> = << 3.14159::float >>
(1 + mantissa / :math.pow(2, 52) * :math.pow(2, exp-1023))
dps = "0x/0y"
String.lenght dps
byte_size dps
String.at(dps, 0)
String.codepoints(dps)
String.split(dps, "/")
String.at("Dog", 0)
String.at("Dob", 0)
String.capitalize "ecole"
String.capitalize "iiiii"
String.codepoints("tky Do g")
String.downcase "0 RsteD"
String.duplicate "Hi!", 3
String.ends_with? "string", ["elix", "stri", "ring"]
String.first "Dog"
String.codepoints "noe\u3081"
String.graphemes "noe\u03081"
String.last "Dog"
String.length "0x/0y"
String.ljust("str", 5)
String.lstrip "\t\f Hello\t\n"
String.lstrip "!!!SALE!!!", ?!
String.printable? "tky"
String.printable? "\x{0000} a null"
String.replace "str str", "at", "Osaka"
String.replace "str str", "at", "Osaka", global: false
String.replace "str str", "at", "Osaka", insert_replacesed: 0
String.replace "str str", "at", "Osaka", insert_replaced: [0,2]
String.reverse "dog"
String.reverse ""
String.rjust("cat", 5, ?>)
String.rstrip("line \r\n")
String.rstrip "!!!SALE!!!", ?!
String.slice "sti str", 4, 3
String.slice "str str", -3, 3
String.split "str str "
String.split " str str ", "t"
String.split "str str", ~r([ae])
String.split "str str", ~r([ae]), parts: 2
String.starts_with? "string", ["elix", "stri", "ring"]
String.strip "\t Hello \r\n"
String.strip "!!!SALE!!!", ?!
String.upcase "TKY"
String.valid_character? "D"
String.valid_character? "Dog"
center(["cat", "zebra", "elephant"])



c("parse.exs")
Parse.number('123')
Parse.number('-123')
Parse.number('+123')
Parse.number('+9')
Parse.number('+a')
Parse.number('+a')

str = 'str'
is_list str
length str
Enum.reverse str
[ 11, 22, 33 ]
str = 'wombat'
:io.format "-w-n", [ str ]
List.to_tuple str
str ++ [0]
'0x/0y'
'pole' ++ 'vault'
'str' -- 'str'
List.zip [ 'abc', '123']
[ head | tail ] = 'str'
head
tail
[ head | tail ]


~r"""
hello
"""

IO.puts "str"
IO.write "
  str
  string
"
Io.puts "end"

IO.put "start"
IO.write """
  str
  string
"""
IO.puts "end"

-C
-c
-R
-r
-S
-s
-W
-w

~C[1\n2#{1+2}]
~c"1\2#{1+2}"
~S[1\n2#{1+2}]
~s/1\n2#{1+2}/
~W[str c#('a')t str str str]
~w[str c#('a')t str str str]

~w"""
str
str
str
"""
name = "str"
"str #{String.capitalize name}!"

//Enum
list = Enum.to_list 1..5
Enum.concat([1,2,3], [4,5,6])
Enum.concat [1,2,3], 'abc'
Enum.map(list, &(&1 * 10))
Enum.map(list, &String.duplicate("*", &1))

Enum.at(10..20, 3)
Enum.at(10..20, 20)
Enum.at(10..20, 20, :no_one_here)
Enum.filter(list, &(&1 > 2))
require Integer
Enum.filter(list, &Integer.is_even/1)
Enum.reject(list, &Integer.is_even/1)

Enum.sort ["str", "str", "str", "str", "str"]
Enum.sort ["str", "str", "str", "str", "str"],
&(String.length(&1) <= String.lenght(&2))
Enum.max ["str", "str", "str", "str", "str"]
Enum.max_by ["str", "str", "str", "str", "str"],
&String.length/1

Enum.take(list, 3)
Enum.take_every list, 2
Enum.take_while(list, &(&1 < 4))
Enum.split(list, 3)
Enum.split_while(list, &(&1 < 4))

Enum.join(list)
Enum.join(list, ", ")

Enum.all?(list, &(&1 < 4))
Enum.any?(list, &(&1 < 4))
Enum.member?(list, 4)
Enum.empty?(list)

Enum.zip(list, [:a, :b, :c])
Enum.with_index(["str", "str", "str", "str"])
Enum.reduce(1..100, &(&1+&2))
Enum.reduce(["str", "str", "str", "str"], fn word, longest ->
  if String.length(word) > String.length(longest) do
    word
  end
    longest
  end
end)
Enum.reduce("str", "str", "str", "str"), 0, fn word,
  longest ->
    if String.length(word) > longest,
    do: String.length(word),
    else: longest
  end)




import Enum
deck = for rank <- '23456789TJQKA', suit <- 'CDHS', do: [suit,rank]
deck |> shuffle |> take(13)
hands = deck |> shuffle |> chunk(13)

Enum.sort ["str", "str", "str", "str", "str"],
&(String.length(&1) <= String.length(&2))

if condition do
  expressssion(s)
else
  expression(s)
end

MyList.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])

[ 1, 2, 3, 4, 5 ]
|>Enum.map(&(&1*&1))
|>Enum.with_index
|>Enum.map(fn [value, index] -> value - index end)
|>IO.inspect 


s = Stream.map [1, 3, 5, 7], &(&1 + 1)
Enum.to_list s

squares = Stream.map[1, 2, 3, 4], &(&1*&1)
plus_ones = Stream.map squares, &(&1+1)
odds = Stream.filter plus_ones, fn x -> rem(x,2) == 1 end
Enum.to_list odds

Enum.map(1..10_000_000, &(&1+1)) |> Enum.take(5)
Stream.map(1..10_000_000, &(&1+1)) |> Enum.take(5)

Stream.cycle(~w{ str str }) |>
Stream.zip(1..5) |>
Enum.map(fn {class, values} ->
  ~s{<tr class="#{class}"><td>#{value}</td></tr>\n} end) |>
IO.puts

Stream.repeatedly(fn -> true end) |> Enum.take(3)
Stream.repeatedly(&:random.uniform/0) |> Enum.take(3)

Stream.iterate(0, &(&1+1)) |> Enum.take(5)
Stream.iterate(2, &(&1*&1)) |> Enum.take(5)
Stream.iterate([], &(&1)) |>Enum.take(5)

fn state -> { stream_value, new_state } end
Stream.unfold({0,1}, fn {f1,f2} -> {f1, {f2, f1+f2}} end) |> Enum.take(15)

/*
Stream.resource(fn -> File.open!("sample") end,
  fn file ->
    case IO.read(file, :line) do
      data when is_binary(data) -> {{data}, file}
      _ -> {:halt, file}
    end
  end,
  fn file -> File.close(file) end)
*/

iex countdown.exs
counter = Countdown.timer
printer = counter |> Stream.each(&IO.puts/1)
speaker = printer |> Stream.each(&Countdown.say/1)

speaker |> Enum.take(5)
speaker |> Enum.take(3)
speaker |> Enum.to_list


Enum.into 1..5, []
Enum.into 1..5, [100, 101]
Enum.into IO.stream(:stdio, :line), IO.stream(:stdio, :line)

for x <- [ 1, 2, 3, 4, 5 ], do: x * x
for x <- [ 1, 2, 3, 4, 5 ], x < 4, do: x * x
pattern <- enumerable_thing
x <- [1,2], y <- [5,6]
for x <- [1,2], y <- [5,6], do: x * y
for x <- [1,2], y <- [5,6], do: {x, y}

min_maxes = [{1,4}, {2,3}, {10, 15}]
for {min, max} <- min_maxes, n <- min..max, do: n

first8 = [ 1,2,3,4,5,6,7,8 ]
for x <- first8, y <- first8, x >= y, rem(x*y, 10)==0, do: { x, y }
reports = [ str: :str, str: :str, str: :str, str: str]
for { str, str } <- reports, do: { str, str }

for << ch <- "str" >>, do: ch
for << ch <- "str" >>, do: <<ch>>

for << << b1::size(2), b2::size(3), b3::size(3) >> <- "str" >>,

name = "Tky"
for name <- [ "str", "str" ], do: String.upcase(name)
name

for x <- ~w{ str str }, into: %{}, do: { x, String.upcase(x) }
for x <- ~w{ str str }, into: Map.new, do: { x, String.upcase(x) }
for x <- ~w{ str str }, into: %{"str" => "str"}, do: { x, String.upcase(x) }

for x <- ~w{ str str }, into: IO.stream(:stdio,:line), do: "<<#[x]>>\n"

tax_rates [ NC: 0.075, TX: 0.08 ]

orders = [
  [ id: 123, ship_to: :NC, net_amount: 100.00 ],
  [ id: 124, ship_to: :OK, net_amount: 35.00 ],
  [ id: 125, ship_to: :TX, net_amount: 24.00 ],
  [ id: 126, ship_to: :TX, net_amount: 44.80],
  [ id: 127, ship_to: :NC, net_amount: 25.00 ],
  [ id: 128, ship_to: :MA, net_amount: 10.00 ],
  [ id: 129, ship_to: :CA, net_amount: 102.00]
  [ id: 130, ship_to: :NC, net_amount:  50.00] ]


options = [ {:width, 72}, {:style, "light"}, {:style, "print"} ]
options = [ {:width, 72}, {:style, "light"}, {:sytle, "print"} ]
List.list options
Keyword.get_values optons, :style

//map
map = %{ name: "Tky", likes: "str", where: "Osaka" }
Map.keys map
Map.values map
map[:name]
map.name
map1 = Map.drop map, [:where, :likes]
map2 = Map.put map, :also_likes, "str"
Map.keys map2
Map.has_key? map1, :where
{ value, updated_map } = Map.pop map2, :also_likes
Map.equal? map, updated_map


%{ name: "Tky", a_name } = person
a_name

%{ name: _, height: _ } = person
%{ name: "Tky" } = person

%{ name: _, weight: _ } = person



%{ 2 => state } = %{ 1 => :ok, 2 => :error }
state

%{ item => :ok } = %{ 1 => :ok, 2 => :error }
data = %{ name: "Tky", state: "TX", likes: "str" }
for key <- [ :name, :likes ] do
  %{ ^key => value } = data
  value
end

new_map = %{ old_map | key => value, ... }

m = %{ a: 1, b: 2, c:3 }
m1 = %{ m | b: "str", "str" }
m2 = %{ m1 | a: "str" }

iex defstruct.exs
s1 = %Subscriber()
s2 = %Subscriber{ name: "Tky" }
s3 = %Subscriber{ name: "Tky", paid: true }

s3.name
%Subscriber{name: a_name} = s3
a_name
s4 = %Subscriber{ s3 | name: "Str" }


iex defstruct.exs
a1 = %Attendee{name: "Tky", over_18: true}
Attende.may_attend_after_party(a1)
a2 = %Attendee{a1 | paid: true}
Attendee.may_attend_after_party(a2)
Attendee.print_vip_badge(a2)
a3 = %Attendee{}
Attendee.print_vip_badge(a3)

report = %BugReport{owner: %Customer{name: "Tky", company: "TK"}, details: "broken"}
report.owner.company
report = %BugReport{ report | owner: %Customer{ report.owner | company: "Tky" }}
put_in(report.owner.company, "Tky")
update_in(report.owner.name, &("Mr. " <> &1))
report = %{ owner: %{ name: "Tky", company: "Tky" }, secerity: 1}
put_in(report[:owner][:company], "Tky")
update_in(report[:owner][:name], &("Mr. " <> &1))

/*
get_in no (dict, keys)
put_in (path, value) (dict, keys, value)
update_in (path, fn) (dict, keys, fn)
get_and_update_in (path, fn) (dict, keys, fn)
*/


set1 = Enum.into 1..5, MapSet.new
MapSet.member? set1, 3
set2 = Enum.into 3..8, MapSet.new
MapSet.union set1, set2
MapSet.difference set1, set2
MapSet.difference set2, set1
MapSet.intersection set1, set2

//map
[ 3 | [] ]
[ 2 | [ 3 | [] ] ]

[ 1 | [ 2 | [ 3 | [] ] ] ]

[a, b, c ] = [ 1, 2, 3]
a
b
c

[ head | tail ] = [ 1, 2, 3 ]
head
tail

[99, 97, 116]
[99, 97, 116, 0]
[99, 97, 116, 0]

c "mylist.exs"
MyList.len([])
MyList.len([11,12,13,14,15])

c "myList.exs"
MyList.len([1,2,3,4,5])
MyList.len(["str", "str"])

c "mylist.exs"
MyList.square []
MyList.square [4,5,6]

c "mylist.exs"
MyList.add_1 [1000]
MyList.add_1 [4,6,8]

c "mylist.exs"
MyList.map [1,2,3,4], fn (n) -> n*n end
MyList.map [1,2,3,4], fn (n) -> n+1 end
MyList.map [1,2,3,4], fn (n) -> n > 2 end
MyList.map [1,2,3,4], &(&1 + 1)
MyList.map [1,2,3,4], &(&1 > 2)


c "sum.exs"
MyList.sum([1,2,3,4,5], 0)
MyList.sum([11,12,13,14,15], 0)

c "reduce.exs"
MyList.reduce([1,2,3,4,5], 0, &(&1 + &2))
MyList.reduce([1,2,3,4,5], 1, &(&1 + &2))

MyList.mapsum [1, 2, 3], &(&1 * &1)
MyList.caesar('ryvkve', 13)

[ 1, 2, 3 | [ 4, 5, 6]]

c "swap.exs"
Swapper.swqp [1,2,3,4,5,6]
Swapper.swap [1,2,3,4,5,6,7]

c "weather.exs"
import WeatherHistroy
for_location_27(test_data)


[1,2,3] ++ [4,5,6]
List.flatten([[[1], 2], [[[3]]]])

List.fold([], "", fn value, acc -> "" end)
List.foldr([], "", fn value, acc -> "" end)

list = [ 1, 2, 3 ]
List.replace_at(list, 2, "str")
kw = []
List.keyfind()
List.keyfind()
LIst.keyfind()
List.keyfind()
kw = List.keydelete()
k2 = List.keyreplace()



