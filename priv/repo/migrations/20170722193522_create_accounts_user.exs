defmodule Uploader.Repo.Migrations.CreateUploader.Accounts.User do
  use Ecto.Migration

  def change do
    create table(:accounts_users) do
      add :name, :string
      add :avatar, :string

      timestamps()
    end

  end
end
