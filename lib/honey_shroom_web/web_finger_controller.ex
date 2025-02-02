defmodule HoneyShroomWeb.WebFingerController do
  use Phoenix.Controller

  def show(conn, %{"resource" => resource}) do
    callback_module = Application.get_env(:honey_shroom, :callback_module)

    case callback_module.resolve_resource(resource) do
      {:ok, actor} ->
        conn
        |> put_resp_content_type("application/jrd+json")
        |> json(build_response(actor))

      {:error, :not_found} ->
        send_resp(conn, 404, "Not Found")
    end
  end

  defp build_response(actor) do
    %{
      "subject" => actor.uri,
      "links" => [
        %{
          "rel" => "self",
          "type" => "application/activity+json",
          "href" => actor.url
        }
      ]
    }
  end
end
