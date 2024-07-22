defmodule PhoenixAuthUsersCrudWeb.Router do
  use PhoenixAuthUsersCrudWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixAuthUsersCrudWeb do
    pipe_through :api

    get "/", UsersController, :index
  end
end
