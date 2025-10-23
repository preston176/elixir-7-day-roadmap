# Examples for Day 01 - run with `elixir examples.exs` or paste into IEx

IO.puts("Hello from Elixir — Day 1 examples")

# Immutable variables (can rebind name to new value)
x = 10
x = x + 5
IO.inspect(x, label: "x")

# Collections
list = [1, 2, 3]
tuple = {:ok, "value"}
IO.inspect(list, label: "list")
IO.inspect(tuple, label: "tuple")

# Anonymous function and calling it
add = fn a, b -> a + b end
IO.inspect(add.(2, 3), label: "add result")

# Map a list
mapped = Enum.map(list, &(&1 * 2))
IO.inspect(mapped, label: "mapped")

# Reduce to sum
sum = Enum.reduce(list, 0, &(&1 + &2))
IO.inspect(sum, label: "sum")
