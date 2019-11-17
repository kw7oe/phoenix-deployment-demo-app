defmodule Demo.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:user) do
      add :name, :string
      add :description, :text

      timestamps()
    end

  end
end
