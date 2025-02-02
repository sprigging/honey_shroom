defmodule HoneyShroom.ActivityPub.Actor do
  defstruct [
    :id,
    :type,
    :preferredUsername,
    :name,
    :summary,
    :inbox,
    :outbox,
    :publicKey,
    endpoints: %{}
  ]
end
