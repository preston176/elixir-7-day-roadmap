# Day 03 examples - processes and concurrency

IO.puts("Day 3 — Processes & Concurrency")

# Spawn a process that replies to a message
pid = spawn(fn ->
  receive do
    {:hello, from} -> send(from, {:ok, "hello back"})
  end
end)

send(pid, {:hello, self()})

receive do
  {:ok, msg} -> IO.puts("Got: #{msg}")
after 1000 -> IO.puts("Timeout waiting for reply")
end

# Task example
task = Task.async(fn ->
  # simulate work
  :timer.sleep(100)
  Enum.sum(1..10)
end)

result = Task.await(task)
IO.inspect(result, label: "task result")

# Task.async_stream to concurrently process an enumerable
results = Task.async_stream(1..5, fn n -> n * n end) |> Enum.to_list()
IO.inspect(results, label: "async stream results")
