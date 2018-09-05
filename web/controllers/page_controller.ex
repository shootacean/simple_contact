defmodule SimpleContact.PageController do
  use SimpleContact.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
