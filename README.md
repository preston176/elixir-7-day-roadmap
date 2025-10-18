# elixir-7-day-roadmap

A focused, practical 7-day learning roadmap for Elixir — written for JavaScript / Next.js developers who want to learn a productive, concurrent backend language.

This repo is a day-by-day guide with short explanations, small code examples, and exercises so you can build real skills quickly.

## What is Elixir?

Elixir is a modern functional programming language that runs on the Erlang VM (BEAM). It combines a friendly, Ruby-like syntax with Erlang's battle-tested concurrency, fault-tolerance, and distribution features.

## Why Elixir is powerful for high-scalability systems

- Concurrency and lightweight processes: the BEAM can run millions of isolated processes.
- Fault tolerance: supervision trees make it easy to restart failed parts of the system.
- Hot upgrades and stability: BEAM systems are used in telecom and large messaging platforms.
- Productivity: concise syntax, excellent tooling (Mix, IEx) and a thriving web framework (Phoenix).

If you're building chat services, real-time features, APIs, or background processing at scale, Elixir is an excellent choice.

## Who this roadmap is for

This plan targets JavaScript / Next.js developers who know async programming, promises, and evented servers. You should be comfortable with JS basics and want to learn a backend language focused on concurrency and reliability.

## How to follow the 7-day plan

- Spend 1 focused day per folder. Each day has a short README, runnable examples, and 2–3 exercises.
- Use IEx (interactive shell) to try examples live: `iex -S mix` (or `iex` for snippets).
- Do the exercises and check your understanding at the end of each day.

## Tools to install

- Erlang/OTP (required by Elixir)
- Elixir
- Phoenix (for web & real-time apps)
- Mix (Elixir build tool - comes with Elixir)
- IEx (interactive shell - comes with Elixir)

Quick install pointers (macOS/Homebrew):

```bash
brew install erlang
brew install elixir
mix archive.install hex phx_new
```

Check official docs for your OS: https://elixir-lang.org/install.html and https://hexdocs.pm/phoenix/installation.html

## Folder structure

- /day01-basics
- /day02-pattern-matching
- /day03-processes-concurrency
- /day04-genserver-supervision
- /day05-phoenix-framework
- /day06-testing-elixir
- /day07-final-project

Follow the folders in order. Each README contains examples and exercises you can paste into `.exs` files and run with `elixir file.exs` or in IEx.

Happy learning — open an issue or PR if something can be clearer!
