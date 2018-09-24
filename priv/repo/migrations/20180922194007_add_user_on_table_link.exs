defmodule Community.Repo.Migrations.AddUserOnTableLink do
  use Ecto.Migration

  def change do
    alter table(:links) do
      add :posted_by, references(:users)
    end
  end
end
