# Day 01 — Basics

Objective: Get comfortable with Elixir syntax, values, collections, functions, and IEx.

Why it matters for JS devs

JavaScript developers will find many familiar shapes (variables, functions, arrays). Elixir is functional and immutable by default, so you'll learn to think in transformations rather than mutations.

How to run examples

In IEx (interactive shell):

iex> 1 + 2
iex> Enum.map([1,2,3], fn x -> x \* 2 end)

Or run examples as a script:

elixir examples.exs

Basic examples (save as `examples.exs`):

```elixir
# day01-basics/examples.exs
IO.puts("Hello from Elixir")

# Variables are immutable — you can rebind names but values don't mutate
x = 10
x = x + 5
IO.inspect(x) # 15

# Lists and Tuples
list = [1, 2, 3]
tuple = {:ok, "value"}

# Functions
add = fn a, b -> a + b end
IO.inspect(add.(2, 3))

# Enum module for collections - like Array.map
mapped = Enum.map(list, &(&1 * 2))
IO.inspect(mapped)

```

Mini exercises

1. Write a function that takes a list of numbers and returns the list with each number squared.
2. Create a tuple representing a user: `{:user, id, name}` and pattern match to extract name.
3. Use `Enum.reduce/3` to sum a list of numbers.

What you should understand by end of day

- How to run Elixir scripts and use IEx
- Basic syntax: variables, functions, lists, tuples
- Using the Enum module for common collection tasks
