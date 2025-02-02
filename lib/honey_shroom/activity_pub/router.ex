defmodule HoneyShroom.ActivityPub.Router do
  defmacro activity_pub(path, _opts \\ []) do
    quote do
      scope unquote(path), HoneyShroomWeb do
        get("/.well-known/webfinger", WebFingerController, :show)
        get("/users/:id", ActorController, :show)
      end
    end
  end
end
