defmodule RouteApp.Repo.Migrations.AddLocationTable do
  use Ecto.Migration

  def change do
    create table(:locations, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:lat, :decimal)
      add(:long, :decimal)
      add(:city, :string)
      add(:client_id, references(:clients, type: :uuid, on_delete: :nothing))

      timestamps()
    end
  end
end
