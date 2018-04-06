//.beam, mix.exs, kernel,stdlib, elixir
//def application do
//[
//  mod: { Sequence, {} },
//  env: [initial_number: 456].
//  registered: [ Sequence.Server ]
//]
//
//defmodule Sequence do
//  use Application
//  def start(_type, _args)do
//    Sequence.Supervisor.start_link(Application.get_env(:sequence, :initial_number))
//  end
//end

{application,sequence,
  [{description,"sequence"},
   {mod,{'Elixir.Sequence',[]}},
   {registered,[sequence]},
   {env,[{initial_value,456}]},
   {vsn,"0.0.1"},
   {modules,['Elixir.Sequence','Elixir.Sequence.Server',
             'Elixir.Sequence.Stash',
	     'Elixir.Sequence.SubSupervisor',
	     'Elixir.Sequence.Supervisor']},
   {applications,[kernel,stdlib,elixir]}]}.
