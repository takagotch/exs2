elixir tasks1.exs

{ :ok, count } = Agent.start(fn -> 0 end)
Agent.get(count, &(&1))
Agent.update(count, &(&l+1))
Agent.get(count, &(&1))

Agent.start(fn -> 1 end, name: Sum)
Agent.get(Sum, &(&1))
Agent.update(Sum, &(&1+99))
Agent.get(Sum, &(&1))


c "agent_dict.exs"
Frequency.start_link
Frequency.add_word "tky"
Frequency.add_word "are"
Frequency.add_word "here"
Frequency.add_word "he"
Frequency.add_word "are"
Frequency.words
Frequency.count_for("tky")
Frequency.count_for("are")


iex anagrams.exs
Dictionary.start_link
Enum.map(1..4, &"words/list#{&1}") |> WordlistLoader.load_from_files
Dictionary.anagrams_of "organ"

//@name (:global, __MODULE__)

iex --sname one anagrams_dict.exs
iex --sname two anagrams_dict.exs
Node.list
Dictionary.start_link
WordlistLoader.load_from_files(-w(words/list1 words/list2))
WordlistLoader.load_from_files(-w(words/list3 words/list4))
Dictionary.anagrams_of "argon"
Dictionary.anagrams_of "crate"



