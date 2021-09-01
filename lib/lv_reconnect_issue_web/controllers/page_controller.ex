defmodule LvReconnectIssueWeb.PageController do
  use LvReconnectIssueWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
