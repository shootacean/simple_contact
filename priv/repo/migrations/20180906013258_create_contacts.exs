defmodule SimpleContact.Repo.Migrations.CreateContact do
  use Ecto.Migration

  def change do
    create table(:contacts) do
      add :subject, :string
      add :contents, :text

      timestamps()
    end

  end
end
