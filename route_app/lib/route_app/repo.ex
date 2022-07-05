defmodule RouteApp.Repo do
  use Ecto.Repo,
    otp_app: :route_app,
    adapter: Ecto.Adapters.Postgres
end
