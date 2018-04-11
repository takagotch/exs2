defmodule Simple do
  @type atom_list :: list(atom)
  @spec count_atoms(atom_list) :: non_neg_integer
  def count_atoms(list) do
    length list
  end
end


defmodule Client do
  @spec other_function() :: non_neg_integer
  def other_function do
    Simple.count_atoms [1, 2, 3]
  end
end


defmodule Client do
  @spec other_function() :: non_neg_integer
  def other_function do
    Simple.count_atoms [:a, :b, :c]
  end
end


defmodule NoSpecs do
  def length_plus_n(list, n) do
    length(list) + n
  end
  def call_it do
    length_plus_n(2, 1)
  end
end



defmodule NoSpecs do
  def length_plus_n(list, n) do
    length(list) + n
  end
  def call_it do
    length_plus_n([:a, :b], :c)
  end
end






