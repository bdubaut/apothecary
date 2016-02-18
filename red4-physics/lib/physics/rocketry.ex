defmodule Physics.Rocketry do
  import Calcs

  @earth %{mass: 5.972e24, radius: 6.371e6}
  @newtons_contsant 6.67e-11

  def escape_velocity(:earth) do
    @earth
      |> escape_velocity
  end

  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> Calcs.to_km
      |> Calcs.to_nearest_tenth
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    2 * @newtons_contsant * mass / radius
      |> square_root
  end
end
