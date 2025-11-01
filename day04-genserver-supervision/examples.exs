# Day 04 examples - GenServer & Supervision

IO.puts("Day 4 — GenServer & Supervision")

defmodule Counter do
  use GenServer

  def start_link(initial), do: GenServer.start_link(__MODULE__, initial, name: __MODULE__)
  def inc(), do: GenServer.call(__MODULE__, :inc)
  def get(), do: GenServer.call(__MODULE__, :get)

  def init(initial), do: {:ok, initial}
  def handle_call(:inc, _from, state), do: {:reply, :ok, state + 1}
  def handle_call(:get, _from, state), do: {:reply, state, state}
end

{:ok, _} = Counter.start_link(0)
Counter.inc()
IO.inspect(Counter.get(), label: "counter")
