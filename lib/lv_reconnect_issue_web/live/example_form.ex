defmodule LvReconnectIssueWeb.ExampleFormLive do
  use LvReconnectIssueWeb, :live_component

  def mount(socket) do
    {:ok, assign(socket, value: "some value")}
  end

  def render(assigns) do
    ~H"""
      <form id="example-form" action="#" phx-change="change" phx-target={ @myself }>
        <input type="text" name="value" value={ @value }>
      </form>
    """
  end

  def handle_event("change", %{"value" => value}, socket) do
    {:noreply, assign(socket, value: value)}
  end
end
