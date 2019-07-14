defmodule BmaWeb.PageController do
  use BmaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
