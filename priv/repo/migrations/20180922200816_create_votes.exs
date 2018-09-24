defmodule Community.Repo.Migrations.CreateVotes do
  use Ecto.Migration

  def change do
    create table(:votes) do
      add :link_id, references(:links, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:votes, [:link_id])
    create index(:votes, [:user_id])
  end
end
