defmodule UauthWeb.HomeController do
  use UauthWeb, :controller

  def index(conn, _params) do
    send_resp(conn, 200, "Welcome to Uauth!")
  end
end
