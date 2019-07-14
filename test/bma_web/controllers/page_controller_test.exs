defmodule BmaWeb.PageControllerTest do
  use BmaWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Bma"
  end
end
