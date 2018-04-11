indpect self

defimpl Inspect, for: PID do
  def inspect(pid, _) do
    "#Process: " <> IO.iodata_to_binary(:erlang.pid_to_list(pid)) <> "!!"
  end
end

indpect self



c "basic.exs"
b = %Blob{content: 123}
inspect b

inspect b, structs: false

fifty = %Bitmap{value: 50}

fifty |> Enum.into []

Enum.into [0,1,1,0,0,1,0], %Bitmap[value: 0]


Enum.into [1,1,0,0,1,0], %Bitmap(value: 0)

%Bitmap[value: 12345678901234567890]

%Bitmap[value: 12345]

%Bitmap[value: 12345678901234567890]


"Fifty in bits bits is: #{fifty}"

%Bitmap{value: 12345}
%Bitmap{value: 12345678901234567890}
//Inspect.Algebra

"Fifty in bits is: #{fifty}"


