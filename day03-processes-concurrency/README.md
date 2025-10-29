# Day 03 — Processes & Concurrency

Objective: Learn lightweight processes, sending and receiving messages, and spawn tasks.

Why JS devs care

Think of Elixir processes like very lightweight worker threads. They're isolated and communicate via messages — similar to web workers or worker threads in JS, but far cheaper and easier to use at scale.

How to run examples

elixir examples.exs

Examples (save as `examples.exs`):

```elixir
# day03-processes-concurrency/examples.exs

# Spawning a process and sending a message
pid = spawn(fn ->
  receive do
    {:hello, from} -> send(from, {:ok, "hello back"})
  end
end)

send(pid, {:hello, self()})

receive do
  {:ok, msg} -> IO.puts("Got: #{msg}")
after 1000 -> IO.puts("Timeout")
end

# Task (higher-level abstraction)
task = Task.async(fn -> 1 + 2 end)
IO.inspect(Task.await(task))

```

Mini exercises

1. Spawn a process that counts from 1 to 3 with a small sleep and sends each number back to the parent.
2. Use `Task.async_stream/3` to run a function across a list concurrently.
3. Explain how processes are different from OS threads.

What you should understand by end of day

- How to spawn processes and exchange messages
- Use Tasks for easy concurrent work
- Why process isolation helps build reliable systems
