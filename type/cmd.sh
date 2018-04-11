mix new simple
cd simple

mix compile
dialyzer _build/dev/lib/simple/ebin

:code.lib_dir(:elixir)

dialyzer --build_plt --apps erts /Users/dave/Play/elixir/lib/elixir/ebin

dialyzer _build/dev/lib/simple/ebin



mix compile
dialyzer _build/dev/lib/simple/ebin

mix compile
dialyzer _build/dev/lib/simple/ebin

mix compile
dialyzer _build/dev/lib/simple/ebin

dialyzer _build/dev/lib/simple/ebin/Elixir.NoSpecs.beam


dialyzer _build/dev/lib/simple/ebin/Elixir.NoSpecs.beam

