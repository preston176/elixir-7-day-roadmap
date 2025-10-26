# Day 02 examples - pattern matching

IO.puts("Day 2 — Pattern matching examples")

{:ok, value} = {:ok, 42}
IO.inspect(value, label: "value from tuple")

[head | tail] = [1, 2, 3, 4]
IO.inspect(head, label: "head")
IO.inspect(tail, label: "tail")

defmodule MatchDemo do
  def handle({:ok, v}), do: "OK: #{v}"
  def handle({:error, r}), do: "Error: #{r}"
end

IO.inspect(MatchDemo.handle({:ok, "yay"}))
IO.inspect(MatchDemo.handle({:error, "boom"}))

case {:error, "nope"} do
  {:ok, v} -> IO.inspect(v)
  {:error, r} -> IO.puts("Handled error: #{r}")
end
