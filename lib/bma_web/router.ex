defmodule BmaWeb.Router do
  use BmaWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Phoenix.LiveView.Flash
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BmaWeb do
    pipe_through :browser

    get "/",              HomeController, :index
    get "/resources",     HomeController, :resources
    get "/architecture",  HomeController, :architecture
    get "/roadmap",       HomeController, :roadmap

    live "/demo", Demo
  end

  scope "/api", BmaWeb do
    pipe_through :api
  end
end
