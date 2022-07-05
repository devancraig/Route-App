defmodule RouteAppWeb.PageController do
  use RouteAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
