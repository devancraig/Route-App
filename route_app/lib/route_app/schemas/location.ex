defmodule RouteApp.Schemas.Location do
  use Ecto.Schema
  import Ecto.Changeset

  alias RouteApp.Schemas.Client

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "locations" do
    field(:lat, :decimal)
    field(:long, :decimal)
    field(:city, :string)

    belongs_to(:client, Client, type: :binary_id, foreign_key: :client_id)

    timestamps()
  end

  @doc false
  def changeset(locations, attrs) do
    locations
    |> cast(attrs, [:lat, :long, :city, :client_id])
    |> validate_required([:lat, :long, :city, :client_id])
  end
end
