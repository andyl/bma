defmodule BmaWeb.HomeController do
  use BmaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def resources(conn, _params) do
    render(conn, "resources.html")
  end

  def architecture(conn, _params) do
    render(conn, "architecture.html")
  end

  def roadmap(conn, _params) do
    render(conn, "roadmap.html")
  end
end
