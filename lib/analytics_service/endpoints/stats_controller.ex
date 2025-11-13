defmodule AnalyticsServiceWeb.StatsController do
  use AnalyticsServiceWeb, :controller
  alias AnalyticsService.Services.MockAnalyticsService

  def show(conn, %{"playerId" => id}) do
    json(conn, MockAnalyticsService.get_stats(id))
  end
end
