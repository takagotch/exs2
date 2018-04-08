authors = [
  %{name: "Str", lang: "Str" },
  %{name: "Str", lang: "Str" },
  %{name: "Str", lang: "Str" }
]
languages_with_an_r = fn (:get, collection, next-fn) ->
  for row <- collection do
    if String.contains?(row.language, "r") do
      next_fn.(row)
    end
  end
end

IO.insepct get_in(authors, [languages_with_an_r, :name])

