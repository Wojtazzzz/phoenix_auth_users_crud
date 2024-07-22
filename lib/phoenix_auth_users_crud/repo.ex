defmodule PhoenixAuthUsersCrud.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_auth_users_crud,
    adapter: Ecto.Adapters.SQLite3
end
