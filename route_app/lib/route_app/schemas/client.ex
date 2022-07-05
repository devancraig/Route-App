defmodule RouteApp.Schemas.Client do
  use Ecto.Schema
  import Ecto.Changeset

  alias RouteApp.Schemas.Distance
  alias RouteApp.Schemas.Location

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "clients" do
    field(:address, :string)
    field(:city, :string)

    has_many(:distances, Distance)
    has_many(:locations, Location)

    timestamps()
  end

  @spec changeset(
          {map, map}
          | %{
              :__struct__ => atom | %{:__changeset__ => map, optional(any) => any},
              optional(atom) => any
            },
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(clients, attrs) do
    clients
    |> cast(attrs, [:address, :city])
    |> validate_required([:address, :city])
  end
end
