defmodule AnalyticsServiceWeb.LeaderboardController do
  use AnalyticsServiceWeb, :controller
  alias AnalyticsService.Services.MockAnalyticsService

  def index(conn, _params) do
    json(conn, MockAnalyticsService.get_leaderboard())
  end
end
