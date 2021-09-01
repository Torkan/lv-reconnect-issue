defmodule LvReconnectIssueWeb.IndexLive do
  use LvReconnectIssueWeb, :live_view

  def mount(_, _, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <div>
        <%# live_component(LvReconnectIssueWeb.NewComponentLive, id: "boom") %>
        <%= live_component(LvReconnectIssueWeb.ExampleFormLive, id: "example_form") %>
      </div>
    """
  end
end
