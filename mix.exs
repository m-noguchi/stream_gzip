defmodule StreamGzip.Mixfile do
  use Mix.Project

  def project do
    [
      app: :stream_gzip,
      build_embedded: Mix.env == :prod,
      deps: deps(),
      description: "Gzip or gunzip a stream.",
      elixir: "~> 1.4",
      package: package(),
      start_permanent: Mix.env == :prod,
      version: "0.1.1",
      # Docs
      docs: [
        main: "readme",
        extras: ["README.md"],
      ],
      homepage_url: "https://github.com/ne-sachirou/stream_gzip",
      name: "StreamGzip",
      source_url: "https://github.com/ne-sachirou/stream_gzip",
    ]
  end

  def application, do: [extra_applications: []]

  defp deps do
    [
      {:ex_doc, "~> 0.17", only: :dev, runtime: false},
      {:inner_cotton, github: "ne-sachirou/inner_cotton", only: [:dev, :test]},
      {:stream_hash, "~> 0.1", only: :test},
    ]
  end

  defp package do
    [
      files: ["LICENSE", "README.md", "mix.exs", "lib"],
      licenses: ["GPL-3.0"],
      links: %{
        "GitHub": "https://github.com/ne-sachirou/stream_gzip",
      },
      maintainers: ["ne_Sachirou <utakata.c4se@gmail.com>"],
      name: :stream_gzip,
    ]
  end
end
