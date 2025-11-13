defmodule AnalyticsService.Contracts.PlayerStats do
  @derive Jason.Encoder
  defstruct [
    :player_id,
    :games_played,
    :wins,
    :losses,
    :win_rate,
    :avg_damage
  ]
end
