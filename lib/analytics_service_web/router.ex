defmodule AnalyticsServiceWeb.Router do
  use AnalyticsServiceWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AnalyticsServiceWeb do
    pipe_through :api

    post "/results", ResultsController, :create
    get "/stats/:playerId", StatsController, :show
    get "/leaderboard", LeaderboardController, :index
    get "/trends", TrendsController, :index
  end
end
