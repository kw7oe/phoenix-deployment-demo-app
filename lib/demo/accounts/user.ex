defmodule Demo.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user" do
    field :description, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
