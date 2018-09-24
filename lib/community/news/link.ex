defmodule Community.News.Link do
  use Ecto.Schema
  import Ecto.Changeset

  alias Community.News.{User, Vote}

  schema "links" do
    field :description, :string
    field :url, :string
    belongs_to :user, User
    has_many :votes, Vote

    timestamps()
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [:url, :description])
    |> validate_required([:url, :description])
  end
end
