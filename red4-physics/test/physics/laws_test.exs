defmodule Physics.LawsTest do
  use ExUnit.Case
  doctest Physics.Laws

  test "#newtons_gravitational_constant returns Newton's constant" do
    assert Physics.Laws.newtons_gravitational_constant == 6.67e-11
  end
end
