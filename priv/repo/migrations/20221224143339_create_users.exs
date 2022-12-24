defmodule Users.Repo.Migrations.CreateUsers do
  use Ecto.Migration
  import Ecto.Changeset

  def change do
    create table(:people) do
      add :first_name, :string
      add :last_name, :string
      add :password, :string
    end
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :password])
    |> validate_required([:first_name, :last_name, :password])
    |> validate_length(:password, min: 8)
  end
end
