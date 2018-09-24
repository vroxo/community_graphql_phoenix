defmodule Community.Repo.Migrations.CreateIndexUserId do
  use Ecto.Migration

  def change do
    create index(:links, [:user_id])
  end
end
