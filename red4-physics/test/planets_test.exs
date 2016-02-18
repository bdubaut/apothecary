defmodule PlanetsTest do
  use ExUnit.Case
  doctest Planets

  test "#earth returns a Map of the Earth's variables." do
    assert Planets.earth == %{mass: 5.972e24, radius: 6.37e6}
  end
end
