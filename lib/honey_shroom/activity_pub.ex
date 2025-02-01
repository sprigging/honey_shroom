defmodule HoneyShroom.ActivityPub do
  @callback resolve_actor(uri :: String.t()) ::
              {:ok, Actor.t()} | {:error, :not_found}

  def fetch_actor(uri) do
    case Application.get_env(:honey_shroom, :callback_module).resolve_actor(uri) do
      {:ok, actor} -> validate_actor(actor)
      error -> error
    end
  end

  defp validate_actor(%Actor{} = actor), do: {:ok, actor}
  defp validate_actor(_), do: {:error, :invalid_actor}
end
