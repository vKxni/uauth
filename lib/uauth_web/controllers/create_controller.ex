defmodule UauthWeb.CreateController do
  use UauthWeb, :controller

  alias Uauth.Auth.Password
  alias Uauth.Auth.Hash

  def index(conn, %{"first_name" => first_name, "last_name" => last_name}) do
    password = Password.generate_password()

    hash = Hash.hash_password(password)

    user = %Users.Person{
      first_name: first_name,
      last_name: last_name,
      password: hash
    }

    Users.Repo.insert(user)

    send_resp(conn, 200, "SUCCESS")
  end
end
