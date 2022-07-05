defmodule RouteApp.Repo.Migrations.AddClientTable do
  use Ecto.Migration

  def change do
    create table(:clients, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:address, :string)
      add(:city, :string)

      timestamps()
    end
  end
end
