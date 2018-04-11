@callback parse(uri_info :: URI.Info.t) :: URI.Info.t
@callback default_port :: integer


-spec return _error(integer(), any()) -> no_return().
return_error(Line, Message) ->
  throw({error, {Line, ?MODULE, Message}}).


defmodule LineItem do
  defstruct sku: "", quantity: 1
  @type t :: %LineItem{sku: String.t, quantity: integer}
end

(... -> integer)
(list(integer) -> integer)
(() -> String.t)
(integer, atom -> list(atom))

( atom, float -> list )
( (atom, float) -> list )
(list(integer) -> integer)
(list(integer) -> integer)

@spec count(t, (element -> as_boolean(term))) :: non_neg_integer


integer | float
[ {atom, any} ]
list(atom, any)
non_neg_integer | {:error, String.t}
{ integer, atom -> { :pair, atom, integer } }
<< _ :: _ * 4 >>

@type type_name :: type_specification

@type term :: any
@type binary :: <<_::_*8>>
@type bitstring :: <<_::_*1>>
@type boolean :: false | true
@type byte :: 0..255
@type char :: 0..0x10ffff
@type list :: [ any ]
@type list(t) :: integer | float
@type number :: atom
@type mfa :: {module, atom, byte}
@type node :: atom
@type timeout :: i:infinity | non_neg_integer
@type no_return :: none
@type variant(type_name, type) :: { :variant, type_name, type }

@spec create_string_tuple(:string, String.t) :: variant(:string, String.t)

@type key :: any
@type value :: any
@type keys :: [ key ]
@type t :: tuple | list

@spec values(t) :: [value]
@spec size(t) :: non_neg_integer
@spec has_key?(t, key) :: boolean
@spec update(t, key, value, (value -> value)) :: t

@spec at(t, index) :: element | nil
@spec at(t, index, default) :: element | default

def at(collection, n, default \\ nil) when n >= 0 do
end



defmodule Simple do
  @type atom_list :: list(atom)
  @spec count_atom(atom_list) :: non_neg_integer

  def count_atom(list) do
  end
end





