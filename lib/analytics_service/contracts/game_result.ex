defmodule AnalyticsService.Contracts.GameResult do
  @derive Jason.Encoder
  defstruct [
    :winner_id,
    :loser_id,
    :winner_damage,
    :loser_damage,
    :timestamp
  ]
end
