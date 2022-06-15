defmodule Melody.Repo do
  use Ecto.Repo,
    otp_app: :melody,
    adapter: Ecto.Adapters.Postgres
end
