defmodule Community.Repo.Migrations.RemoveClumnPostedBy do
  use Ecto.Migration

  def change do
    drop index(:links, [:posted_by])

    alter table(:links) do
      remove :posted_by
    end
  end
end
