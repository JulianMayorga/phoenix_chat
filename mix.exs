defmodule Chat.Mixfile do
  use Mix.Project

  def project do
    [app: :chat,
     version: "0.0.5",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Chat, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger, :edeliver, :phoenix_ecto, :postgrex, :phoenix_live_reload]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 1.1.2"},
     {:phoenix_html, "~> 2.4"},
     {:postgrex, "0.10.0"},
     {:phoenix_ecto, "2.0.1"},
     {:phoenix_live_reload, "~> 1.0"},
     {:edeliver, ">= 1.2.6"},
     {:exrm, "~> 1.0.3"},
     {:cowboy, "~> 1.0"}]
  end
end
