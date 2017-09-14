defmodule LogCapture.RateLimit do

  require Logger

  def rate_limit(conn, _opts) do
    Logger.info(fn -> "Rate limit violation" end)
    conn
  end

  def rate_limit_warn(conn, _opts) do
    Logger.warn(fn -> "Rate limit violation" end)
    conn
  end
end
