# Day 02 — Pattern Matching

Objective: Learn pattern matching — a powerful Elixir feature used everywhere (function heads, case, tuples, lists).

Why JS devs care

Pattern matching replaces many common conditional checks and destructuring tasks you might write with object/array destructuring and if/else logic in JavaScript.

How to run examples

elixir examples.exs

Examples (save as `examples.exs`):

```elixir
# day02-pattern-matching/examples.exs

# Basic matching
{:ok, value} = {:ok, 42}
IO.inspect(value)

# List matching
[head | tail] = [1,2,3]
IO.inspect(head)
IO.inspect(tail)

# Function head matching
defmodule Greeter do
  def hello(%{name: name}), do: "Hello, #{name}"
  def hello(_), do: "Hello, stranger"
end

IO.inspect(Greeter.hello(%{name: "Alex"}))

# Case with pattern matching
case {:error, "fail"} do
  {:ok, v} -> IO.inspect(v)
  {:error, msg} -> IO.puts("Error: #{msg}")
end

```

Mini exercises

1. Pattern match a map to extract a nested value.
2. Write two function clauses to handle `{ :ok, value }` and `{ :error, reason }`.
3. Given a list, use pattern matching to split into first, second, and rest.

What you should understand by end of day

- How pattern matching works in assignments and function heads
- Using pattern matching in case expressions and list decomposition
