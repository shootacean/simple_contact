defmodule SimpleContact.ContactController do
  use SimpleContact.Web, :controller
  alias SimpleContact.Contact

  def index(conn, _params) do
    contacts = Contact |> Repo.all
    render conn, "index.html", contacts: contacts
  end

  def new(conn, _params) do
    changeset = Contact.changeset(%Contact{ })
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{ "contact" => contact_params }) do
    changeset = Contact.changeset(%Contact{ }, contact_params)
    case Repo.insert(changeset) do
      { :ok, _ } ->
        conn
        |> put_flash(:info, "お問い合わせしました")
        |> redirect(to: contact_path(conn, :index))
      { :error, changeset } ->
        conn
        |> put_flash(:error, "お問い合わせに失敗しました")
        |> render("index.html", changeset: changeset)
    end
  end

end
