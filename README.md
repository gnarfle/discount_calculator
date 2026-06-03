# Coding Exercise: Discount Calculator

Welcome! This is a small Ruby exercise designed to take about 45 minutes. We're interested in how you think about code, not just whether it runs.

## Setup

This Codespace already has Ruby and RSpec installed. To run the tests:

```bash
bundle exec rspec
```

You should see four passing tests and two failing ones.

## The Exercise

You've inherited a `DiscountCalculator` class that handles cart totals, promo codes, and a few discount rules. It works — mostly — but it has problems. We're going to ask you to improve it.

There are three parts. Spend roughly the time suggested on each, but use your judgment.

### Part 1: Make all the tests pass (~15 min)

Two tests are currently failing:

- One exposes a real bug in the existing code
- One requires you to implement functionality that doesn't exist yet

Read the failing test output carefully, then fix the code to make them pass. If you find yourself adding a special case to handle just the new test, pause and ask whether there's a cleaner approach.

### Part 2: Identify issues (~10 min)

Before refactoring, walk us through the code and talk about what you'd want to improve. We're interested in:

- Bugs or edge cases that aren't covered by the existing tests
- Design choices you'd push back on
- Things you'd want to ask the original author about

Don't worry about catching everything — focus on what stands out to you and explain your reasoning. It's fine to flag something and decide it's not worth fixing right now.

### Part 3: Refactor (~15 min)

Pick the two or three improvements you think matter most and implement them. Things worth considering:

- Are there inputs the code doesn't handle well?
- Are there assumptions baked in that should be more explicit?
- If you were going to add another type of discount next sprint, would the current structure support it?

You don't need to rewrite everything. A small, well-justified change is better than a sprawling refactor.

## Adding Tests

If you spot a missing test case while working through this, add it. We'd rather see good test coverage of edge cases than a perfectly polished implementation.

## A Few Notes

- **Think out loud.** We learn more from how you reason about problems than from the final code. If you're unsure about something, say so.
- **Ask questions.** If something is ambiguous (and some things are), ask. That's a feature of the exercise, not a bug.
- **It's okay not to finish.** Most candidates don't get to everything in 45 minutes. Prioritize.

When you're done, we'll spend a few minutes discussing what you'd do differently with more time.

Good luck!
