defmodule LogCapture.RateLimitTest do

  use LogCapture.ConnCase
  import ExUnit.CaptureLog

  test "rate_limit/2 logs [info] rate limit violations", %{conn: conn} do
    assert capture_log(fn ->
      _ = LogCapture.RateLimit.rate_limit(conn, [])
    end) =~ "Rate limit violation"
  end

  test "rate_limit_warn/2 logs [warn] rate limit violation", %{conn: conn} do
    assert capture_log(fn ->
      _ = LogCapture.RateLimit.rate_limit_warn(conn, [])
    end) =~ "Rate limit violation"
  end
end
