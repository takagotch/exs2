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
Enum.sort [], &()
Enum.max []
Enum.max_by [],
&String.length/1

Enum.take()
Enum.take_every list, 2
Enum.take_while()
Enum.split(list, 3)
Enum.split_while(list, &(&1 < 4))

Enum.join(list)
Enum.join(list, ", ")

Enum.all?(list, &(&1 < 4))
Enum.any?(list, &(&1 < 4))
Enum.member?(list, 4)
Enum.empty?(list)

Enum.all?()
Enum.any?()
Enum.member?()
Enum.empty?()

Enum.zip()
Enum.with_index()
Enum.reduce()
Enum.reduce()
Enum.reduce()









