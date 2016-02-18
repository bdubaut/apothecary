defmodule CalcsTest do
  use ExUnit.Case
  doctest Calcs

  test "#to_nearest_tenth rounds the float to the nearest 10th" do
    assert Calcs.to_nearest_tenth(10.22) == 10.3
  end

  test "#to_km converts the velocity to km/h" do
    assert Calcs.to_km(100000) == 100
  end

  test "#square_root calculates the square root of the argument" do
    assert Calcs.square_root(4) == 2
  end
end
