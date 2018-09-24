defmodule Community.News.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Community.News.{Link, Vote}


  schema "users" do
    field :email, :string
    field :name, :string
    field :password, :string
    has_many :links, Link
    has_many :votes, Vote

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :password])
    |> validate_required([:name, :email, :password])
    |> unique_constraint(:email)
  end
end
