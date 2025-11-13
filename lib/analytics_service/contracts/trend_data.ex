defmodule AnalyticsService.Contracts.TrendData do
  @derive Jason.Encoder
  defstruct [
    :popular_cards,
    :global_win_rate,
    :meta_shifts
  ]
end
