defmodule UauthWeb.Router do
  use UauthWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", UauthWeb do
    pipe_through :api

    get "/", HomeController, :index
    post "/create", CreateController, :index
    post "/validate", ValidateController, :index
  end
end
