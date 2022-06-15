defmodule Melody.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Melody.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Melody.PubSub}
      # Start a worker by calling: Melody.Worker.start_link(arg)
      # {Melody.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Melody.Supervisor)
  end
end
