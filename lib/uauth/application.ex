defmodule Uauth.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Ecto
      Users.Repo,

      # Start the Telemetry supervisor
      UauthWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Uauth.PubSub},
      # Start the Endpoint (http/https)
      UauthWeb.Endpoint
      # Start a worker by calling: Uauth.Worker.start_link(arg)
      # {Uauth.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Uauth.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    UauthWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
