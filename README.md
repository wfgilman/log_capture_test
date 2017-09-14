# LogCapture

Example application showing `ExUnit.CaptureLog.capture_log/2` assertion fails when log level is `:info`.

Function: `lib/log_capture/rate_limit.ex`

Test: `test/rate_limit_test.exs`

**FIX**: `:logger` `:level` in the config cannot be set higher than the level you're testing at.
```
config :logger, level: :info
```
