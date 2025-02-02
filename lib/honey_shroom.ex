defmodule HoneyShroom do
  @moduledoc """
  Documentation for `HoneyShroom`.
  """

  @callback resolve_resource(resource :: String.t()) ::
              {:ok, %{uri: String.t(), url: String.t()}} | {:error, :not_found}

  @callback get_actor(id :: String.t()) ::
              {:ok, HoneyShroom.ActivityPub.Actor.t()} | {:error, :not_found}
end
