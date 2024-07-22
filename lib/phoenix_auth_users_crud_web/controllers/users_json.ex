defmodule PhoenixAuthUsersCrudWeb.UsersJSON do
  alias PhoenixAuthUsersCrud.User

  @doc """
  Renders a list of urls.
  """
  def index(%{users: users}) do
    for(user <- users, do: data(user))
  end

  @doc """
  Renders a single url.
  """
  def show(%{user: user}) do
    data(user)
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      email: user.email,
      age: user.age
    }
  end
end
