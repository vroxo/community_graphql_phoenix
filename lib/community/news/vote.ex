defmodule Community.News.Vote do
  use Ecto.Schema
  import Ecto.Changeset

  alias Community.News.{User, Link}


  schema "votes" do
    belongs_to :link, Link
    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(vote, attrs) do
    vote
    |> cast(attrs, [])
    |> validate_required([])
  end
end
