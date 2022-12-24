defmodule Users.Repo do
  use Ecto.Repo,
    otp_app: :uauth,
    adapter: Ecto.Adapters.Postgres
end
