# mix phx.gen.html Accounts User users name avatar
defmodule Uploader.Accounts.User do
  use Ecto.Schema
  use Arc.Ecto.Schema
  import Ecto.Changeset
  alias Uploader.Accounts.User


  schema "accounts_users" do
    field :avatar, Uploader.Avatar.Type
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name])
    |> cast_attachments(attrs, [:avatar])
    |> validate_required([:name, :avatar])
  end
end
