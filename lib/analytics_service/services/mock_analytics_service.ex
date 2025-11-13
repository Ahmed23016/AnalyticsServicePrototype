defmodule AnalyticsService.Services.MockAnalyticsService do
  @moduledoc "Prototype in-memory analytics service"

  # --------------------
  # GAME RESULT TRACKING
  # --------------------
  def record_result(_result) do
    %{ok: true, message: "stored"}
  end

  # --------------------
  # PLAYER STATS
  # --------------------
  def get_stats(player_id) do
    %{
      player_id: player_id,
      games_played: 10,
      wins: 6,
      losses: 4,
      win_rate: 0.6,
      avg_damage: 32.5
    }
  end

  # --------------------
  # LEADERBOARD
  # --------------------
  def get_leaderboard() do
    [
      %{player_id: "p1", rank: 1, win_rate: 0.82, games_played: 40},
      %{player_id: "p2", rank: 2, win_rate: 0.79, games_played: 33}
    ]
  end

  # --------------------
  # GAME TRENDS
  # --------------------
  def get_trends() do
    %{
      popular_cards: ["Fireball", "Shield", "Goblin Horde"],
      global_win_rate: 0.53,
      meta_shifts: ["Aggro rising", "Control stable"]
    }
  end
end
