defmodule MelodyWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      MelodyWeb.Telemetry,
      # Start the Endpoint (http/https)
      MelodyWeb.Endpoint
      # Start a worker by calling: MelodyWeb.Worker.start_link(arg)
      # {MelodyWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MelodyWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MelodyWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
