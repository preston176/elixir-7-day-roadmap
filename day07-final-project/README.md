# Day 07 — Final Project: Mini Phoenix app (Chat + Background Worker + API)

Objective: Build a small Phoenix app that demonstrates realtime (channels), a background worker, and a JSON API endpoint. This project is intentionally compact and written to be copied into a real Phoenix app.

Overview

Features:

- Realtime chat notifications using Phoenix Channels
- A background worker (GenServer) that simulates sending notifications every few seconds
- A JSON API endpoint that returns active chat rooms

Prerequisites

- You should have Phoenix installed and Elixir/Erlang set up.
- We'll assume the project is named `roadmap_app` if you follow the commands.

Create project

1. Run: `mix phx.new roadmap_app --no-ecto`
2. cd into the project and start the server: `mix phx.server`

Key files to add (copy these snippets into the project):

1. A simple channel at `lib/roadmap_app_web/channels/room_channel.ex`:

```elixir
defmodule RoadmapAppWeb.RoomChannel do
  use RoadmapAppWeb, :channel

  def join("room:" <> _room_id, _params, socket) do
    {:ok, socket}
  end

  def handle_in("new_msg", %{"body" => body}, socket) do
    broadcast(socket, "new_msg", %{body: body})
    {:noreply, socket}
  end
end
```

2. Wire the channel in `lib/roadmap_app_web/channels/user_socket.ex`:

```elixir
channel "room:*", RoadmapAppWeb.RoomChannel
```

3. Background worker `lib/roadmap_app/notification_worker.ex`:

```elixir
defmodule RoadmapApp.NotificationWorker do
  use GenServer

  def start_link(_opts), do: GenServer.start_link(__MODULE__, %{}, name: __MODULE__)

  def init(state) do
    schedule_tick()
    {:ok, state}
  end

  def handle_info(:tick, state) do
    # Simulate broadcasting a notification
    RoadmapAppWeb.Endpoint.broadcast("room:global", "new_msg", %{body: "Background ping"})
    schedule_tick()
    {:noreply, state}
  end

  defp schedule_tick(), do: Process.send_after(self(), :tick, 5_000)
end
```

4. Start the worker in application supervision tree `lib/roadmap_app/application.ex` (add to children):

```elixir
{RoadmapApp.NotificationWorker, []}
```

5. Simple API controller `lib/roadmap_app_web/controllers/room_controller.ex`:

```elixir
defmodule RoadmapAppWeb.RoomController do
  use RoadmapAppWeb, :controller

  def index(conn, _params) do
    json(conn, %{rooms: ["global", "lobby"]})
  end
end
```

6. Add route in `lib/roadmap_app_web/router.ex`:

```elixir
get "/api/rooms", RoomController, :index
```

Run locally

- mix deps.get
- mix phx.server
- Open `http://localhost:4000` and connect a socket client or use the JavaScript Phoenix client to join `room:global`.

Folder structure explanation

- `lib/roadmap_app` - application logic and workers
- `lib/roadmap_app_web` - web layer: controllers, channels, templates, static assets
- `config` - app configuration and endpoint settings

Exercises for the final project

1. Add a POST API to send a chat message that will broadcast to the channel.
2. Modify the worker to send different messages for different rooms.
3. Add a simple HTML + JS client (assets) that connects the JS client and shows messages in a list.

What you should understand by end of day

- How Phoenix Channels work and how to broadcast messages
- How to add a supervised background worker
- How to expose a JSON API and wire it to controllers and routes
