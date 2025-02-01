defmodule HoneyShroom do
  @moduledoc """
  Documentation for `HoneyShroom`.
  """

  @callback resolve_resource(resource :: String.t()) ::
              {:ok, %{uri: String.t(), url: String.t()}} | {:error, :not_found}
end
