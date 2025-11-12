# Final Project Exercises

1. Add POST /api/messages endpoint that accepts {room, body} and broadcasts to the specified room.
2. Extend `NotificationWorker` to accept dynamic schedules per room via GenServer cast.
3. Add a basic HTML page that connects the JS client and shows messages in a list.

Hints:

- Use `RoadmapAppWeb.Endpoint.broadcast/3` to broadcast from server side.
- To accept POST, add a controller action and a route in the router.
