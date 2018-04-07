use Mix.Config
config :issues, github_url: "https://api.github.com"

//import_config "#{Mix.env}.exs"
//dev.exs, test.exs, prod.exs
//MIX_ENV
//http://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html#environments

use Mix.Config
config :issues, github_url: "https://api.github.com"
config :logger, compile_time_purge_level: :info

Logger.debug "Order total #{total(order)}"
Logger.debug fn -> "Order total #{total(order)}" end



