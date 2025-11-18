defmodule AnalyticsServiceWeb.ResultsController do
  use AnalyticsServiceWeb, :controller
  alias AnalyticsService.Contracts.GameResult
  alias AnalyticsService.Services.MockAnalyticsService

  def create(conn, params) do
    game_result =
      %GameResult{
        winner_id: params["winner_id"],
        loser_id: params["loser_id"],
        winner_damage: params["winner_damage"],
        loser_damage: params["loser_damage"],
        timestamp: DateTime.utc_now()
      }

    json(conn, MockAnalyticsService.record_result(game_result))
  end
end
