defmodule RouteApp.Repo.Migrations.AddDistanceTable do
  use Ecto.Migration

  def change do
    create table(:distances, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:distance, :integer)
      add(:duration, :integer)
      add(:client_id, references(:clients, type: :uuid, on_delete: :nothing))

      timestamps()
    end
  end
end
