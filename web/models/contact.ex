defmodule SimpleContact.Contact do
  use SimpleContact.Web, :model

  schema "contacts" do
    field :subject, :string
    field :contents, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:subject, :contents])
    |> validate_required([:subject, :contents])
  end
end
