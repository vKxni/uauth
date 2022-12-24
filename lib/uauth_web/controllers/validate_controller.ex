defmodule UauthWeb.ValidateController do
  use UauthWeb, :controller
  require Ecto.Query

  alias Uauth.Auth.Hash

  def index(conn, %{"first_name" => first_name, "password" => password}) do
    # find the user in the database
    user = Users.Person |> Ecto.Query.where(first_name: ^first_name) |> Users.Repo.one()

    if user && Hash.verify_password(password, user.password) do
      conn
      |> put_status(:authorized)
      |> json(%{message: "SUCCESS"})
    else
      conn
      |> put_status(:unauthorized)
      |> json(%{message: "Username or Password invalid"})
    end
  end
end
