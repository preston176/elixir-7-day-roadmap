# Day 06 — Testing Elixir

Objective: Learn the basics of ExUnit for unit testing and how to test GenServers and controllers.

Why JS devs care

Testing patterns are familiar: write small, fast unit tests and integration tests. ExUnit is built-in and easy to use.

How to run tests

If you are in a Mix project: `mix test`.
For single files you can still run `elixir` with ExUnit started.

Examples (save as `examples_test.exs`):

```elixir
# day06-testing-elixir/examples_test.exs
ExUnit.start()

defmodule MathTest do
  use ExUnit.Case

  test "sum works" do
    assert Enum.sum([1,2,3]) == 6
  end
end

```

Mini exercises

1. Write tests for the Day 1 examples (map and reduce functions).
2. Mock or simulate a GenServer call in a test and assert its replies.
3. Add a test helper that starts and stops a GenServer for tests.

What you should understand by end of day

- How to write and run tests with `mix test` or `elixir` files
- Structuring tests and using setup blocks
