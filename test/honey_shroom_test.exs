defmodule HoneyShroomTest do
  use ExUnit.Case
  doctest HoneyShroom

  test "greets the world" do
    assert HoneyShroom.hello() == :world
  end
end
