.PHONY: help test test-day01 test-day02 test-day03 test-day04 verify clean

help: ## Show this help message
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

test: test-day01 test-day02 test-day03 test-day04 verify ## Run all day examples and verify docs

test-day01: ## Run Day 01 examples
	@echo "Running Day 01 examples..."
	@elixir day01-basics/examples.exs

test-day02: ## Run Day 02 examples
	@echo "Running Day 02 examples..."
	@elixir day02-pattern-matching/examples.exs

test-day03: ## Run Day 03 examples
	@echo "Running Day 03 examples..."
	@elixir day03-processes-concurrency/examples.exs

test-day04: ## Run Day 04 examples
	@echo "Running Day 04 examples..."
	@elixir day04-genserver-supervision/examples.exs

verify: ## Verify all documentation files exist
	@echo "Verifying documentation files..."
	@test -f day05-phoenix-framework/README.md && echo "✓ Day 05 README exists"
	@test -f day06-testing-elixir/README.md && echo "✓ Day 06 README exists"
	@test -f day07-final-project/README.md && echo "✓ Day 07 README exists"
	@echo "All documentation verified ✓"

clean: ## Clean any generated files (currently no-op)
	@echo "Nothing to clean"
