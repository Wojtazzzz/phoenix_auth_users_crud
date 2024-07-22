defmodule PhoenixAuthUsersCrudWeb.UsersController do
  use PhoenixAuthUsersCrudWeb, :controller

  def index(conn, _params) do
    users = PhoenixAuthUsersCrud.User |> PhoenixAuthUsersCrud.Repo.all()

    render(conn, :index, users: users)
  end
end
