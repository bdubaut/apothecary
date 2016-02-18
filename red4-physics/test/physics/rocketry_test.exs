defmodule RocketryTest do
  use ExUnit.Case
  alias Physics.Rocketry
  doctest Physics.Rocketry

  test "returns the escape_velocity from the earth" do
    assert Rocketry.escape_velocity(:earth) == 11.2
  end

  test "returns the escape velocity from a planet" do
    assert Rocketry.escape_velocity(%{mass: 5.972e24, radius: 6.371e6}) == 11.2
  end
end
