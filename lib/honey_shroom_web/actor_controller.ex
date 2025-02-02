# lib/honey_shroom/web/actor_controller.ex
defmodule HoneyShroomWeb.ActorController do
  use Phoenix.Controller

  def show(conn, %{"id" => id}) do
    callback_module = Application.get_env(:honey_shroom, :callback_module)

    case callback_module.get_actor(id) do
      {:ok, actor} ->
        conn
        |> put_resp_content_type("application/activity+json")
        |> json(actor)

      {:error, :not_found} ->
        send_resp(conn, 404, "Not Found")
    end
  end
end
