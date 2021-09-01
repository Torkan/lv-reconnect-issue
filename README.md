# LvReconnectIssue

Steps to reproduce:

  * Start the app with `mix phx.server`
  * Type something in the text input field, so that it does not have the default value.
  * On line 11 in `lib/lv_reconnect_issue_web/live/index.ex`,
  change the `<%#` to `<%=`.
  * Restart the server.
  * When the client reconnnects, observe that the phx-change event meant for the form component, is instead routed to
  the new component, causing the view to crash and get restarted, and the changed
  form value on the client gets wiped.
