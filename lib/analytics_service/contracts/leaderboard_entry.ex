defmodule AnalyticsService.Contracts.LeaderboardEntry do
  @derive Jason.Encoder
  defstruct [
    :player_id,
    :rank,
    :win_rate,
    :games_played
  ]
end
