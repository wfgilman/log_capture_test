defmodule LogCapture.Router do
  use LogCapture.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LogCapture do
    pipe_through :api
  end
end
