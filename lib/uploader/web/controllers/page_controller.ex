defmodule Uploader.Web.PageController do
  use Uploader.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
