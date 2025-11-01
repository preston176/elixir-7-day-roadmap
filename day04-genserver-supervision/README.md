# Day 04 — GenServer & Supervision

Objective: Learn `GenServer` (stateful processes) and supervision trees for fault tolerance.

Why JS devs care

If you've built Node servers and used classes or objects to hold state, `GenServer` gives you a standard, process-based pattern for stateful workers that can be restarted automatically.

How to run examples

elixir examples.exs

Examples (save as `examples.exs`):

```elixir
# day04-genserver-supervision/examples.exs

defmodule Counter do
  use GenServer

  # client
  def start_link(initial), do: GenServer.start_link(__MODULE__, initial, name: __MODULE__)
  def inc(), do: GenServer.call(__MODULE__, :inc)
  def get(), do: GenServer.call(__MODULE__, :get)

  # server
  def init(initial), do: {:ok, initial}
  def handle_call(:inc, _from, state), do: {:reply, :ok, state + 1}
  def handle_call(:get, _from, state), do: {:reply, state, state}
end

# Start and use the Counter
{:ok, _} = Counter.start_link(0)
Counter.inc()
IO.inspect(Counter.get())

```

Mini exercises

1. Implement a GenServer that stores a map of user counters keyed by id.
2. Create a Supervisor that starts two counters and restarts them on crash.
3. Explain how supervision helps in production compared to manual restarts.

What you should understand by end of day

- The role of GenServer and how to implement call/cast handlers
- How to define a Supervisor and why it's useful
