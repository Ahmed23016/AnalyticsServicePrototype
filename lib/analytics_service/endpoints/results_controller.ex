defmodule AnalyticsServiceWeb.ResultsController do
  use AnalyticsServiceWeb, :controller
  alias AnalyticsService.Services.MockAnalyticsService

  def create(conn, params) do
    resp = MockAnalyticsService.record_result(params)
    json(conn, resp)
  end
end
