defmodule SimpleContact.ContactControllerTest do
  use SimpleContact.ConnCase

  test "GET /contact", %{conn: conn} do
    conn = get conn, "/contact"
    assert html_response(conn, 200) =~ "Simple Contact"
  end

  test "GET /contact/new", %{conn: conn} do
    conn = get conn, "/contact/new"
    assert html_response(conn, 200) =~ "お問い合わせする"
  end

end
