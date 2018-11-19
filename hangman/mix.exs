defmodule Hangman.MixProject do
  use Mix.Project

  def project do
    [
      app: :hangman,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: { Hangman.Application, [] },
      extra_applications: [
        :logger
      ],
      dialyzer: [plt_add_apps: [:mix]]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      { :dictionary, path: "../dictionary" },
      {:dialyxir, "~> 1.0.0-rc.4", only: [:dev, :test], runtime: false}
    ]
  end
end
