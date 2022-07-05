defmodule RouteApp.Schemas.Distance do
  use Ecto.Schema
  import Ecto.Changeset

  alias RouteApp.Schemas.Client

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "distances" do
    field(:distance, :integer)
    field(:duration, :integer)

    belongs_to(:client, Client, type: :binary_id, foreign_key: :client_id)

    timestamps()
  end

  @doc false
  def changeset(distances, attrs) do
    distances
    |> cast(attrs, [:distance, :duration, :client_id])
    |> validate_required([:distance, :duration, :client_id])
  end
end
