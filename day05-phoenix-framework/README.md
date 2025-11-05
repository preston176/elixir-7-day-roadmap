# Day 05 — Phoenix Framework

Objective: Get introduced to Phoenix — Elixir's web framework for building APIs and real-time apps.

Why JS devs care

Phoenix is like Next.js or Express but focuses on real-time features (channels, LiveView) and high throughput. If you want to build APIs or realtime features (chat, notifications), Phoenix is a great fit.

Quick start

Install Phoenix (if not installed):

```bash
mix archive.install hex phx_new
```

Create a new project:

```bash
mix phx.new my_app --no-ecto
```

Key concepts

- Router and Controllers (like Express routes)
- Channels for WebSockets (real-time)
- Endpoint & Plugs (middleware)

Mini exercises

1. Generate a new Phoenix project and start the server: `mix phx.server`.
2. Create a simple controller with a GET endpoint that returns JSON.
3. Explore channels: create a topic and broadcast a message.

What you should understand by end of day

- How Phoenix maps requests to controllers
- Where to add channels for realtime features
- How to run and develop a Phoenix app locally
