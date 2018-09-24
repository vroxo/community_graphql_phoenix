defmodule Community.Repo.Migrations.AddIndexUserOnTableLink do
  use Ecto.Migration

  def change do
    create index(:links, [:posted_by])
  end
end
