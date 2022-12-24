defmodule Users.Person do
  use Ecto.Schema

  schema "people" do
    field(:first_name, :string)
    field(:last_name, :string)
    field(:password, :string)
  end
end
