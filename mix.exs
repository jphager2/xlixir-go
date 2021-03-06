defmodule ElixirGo.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_igo,
      version: "0.1.2",
      escript: escript(),
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      description: "The game of Go in Elixir",
      package: package(),
      deps: deps(),
      name: "Igo",
      source_url: "https://github.com/jphager2/elixir_igo",
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp escript do
    [
      name: "igo",
      main_module: Igo.CLI
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:floki, "~> 0.20.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      name: "elixir_igo",
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jphager2/elixir_igo"},
      maintainers: ["jphager2"],
    ]
  end
end
