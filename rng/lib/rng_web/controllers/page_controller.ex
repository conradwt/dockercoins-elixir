defmodule RngWeb.PageController do
  use RngWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
