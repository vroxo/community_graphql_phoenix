defmodule Community.Repo.Migrations.ModifyClumnNameUserId do
  use Ecto.Migration

  def up do
    alter table(:links) do
      add :user_id, references(:users)
    end
  end
end
