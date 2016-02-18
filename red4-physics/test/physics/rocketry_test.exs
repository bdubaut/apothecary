defmodule RocketryTest do
  use ExUnit.Case
  alias Physics.Rocketry
  doctest Physics.Rocketry

  test "#escape_velocityreturns the escape velocity from the earth" do
    assert Rocketry.escape_velocity(:earth) == 11.2
  end

  test "#escape_velocity returns the escape velocity from any planet" do
    assert Rocketry.escape_velocity(%{mass: 5.972e24, radius: 6.371e6}) == 11.2
  end

  test "#orbital_speed returns the orbital speed around the earth" do
    assert Rocketry.orbital_speed(100) == 7846.404191259335
  end

  test "#orbital_acceleration returns the orbital acceleration value" do
    assert Rocketry.orbital_acceleration(100) == 9.515619587729839
  end
end
