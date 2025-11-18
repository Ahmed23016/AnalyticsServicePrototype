defmodule AnalyticsService.Services.MockAnalyticsService do
  alias AnalyticsService.Contracts.GameResult
  alias AnalyticsService.Contracts.PlayerStats
  alias AnalyticsService.Contracts.TrendData
  alias AnalyticsService.Contracts.LeaderboardEntry

  def record_result(%GameResult{} = result) do
    %{ok: true, stored: result}
  end

  def get_stats(player_id) do
    %PlayerStats{
      player_id: player_id,
      games_played: 10,
      wins: 6,
      losses: 4,
      win_rate: 0.6,
      avg_damage: 32.5
    }
  end

  def get_leaderboard() do
    [
      %LeaderboardEntry{
        player_id: "p1",
        rank: 1,
        win_rate: 0.82,
        games_played: 40
      },
      %LeaderboardEntry{
        player_id: "p2",
        rank: 2,
        win_rate: 0.79,
        games_played: 33
      }
    ]
  end

  def get_trends() do
    %TrendData{
      popular_cards: ["Fireball", "Shield", "Goblin Horde"],
      global_win_rate: 0.53,
      meta_shifts: ["Aggro rising", "Control stable"]
    }
  end
end
