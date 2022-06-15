defmodule MelodyWeb.PageController do
  use MelodyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
