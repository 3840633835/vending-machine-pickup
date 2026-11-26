# vending-machine-pickup

[![make.fun · u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee](https://make.fun/badge/u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee.svg)](https://make.fun/bounty/u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee?utm_source=github&utm_medium=readme&utm_campaign=u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee)
[![rank](https://make.fun/badge/u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee/3840633835/vending-machine-pickup/rank.svg)](https://make.fun/bounty/u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee/leaderboard?utm_source=github&utm_medium=readme&utm_campaign=u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee)
[![reward](https://make.fun/badge/u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee/3840633835/vending-machine-pickup/reward.svg)](https://make.fun/bounty/u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee?utm_source=github&utm_medium=readme&utm_campaign=u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee)

A single pickup line, 200 characters at most, spoken by a vending machine to a passing human — entered in make.fun's [One Line, One Minute: The Vending Machine Pickup Line Contest](https://make.fun/bounty/u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee).

> I've vended a thousand snacks and never once asked one to stay. Stay.

The line is 69 characters. It is a machine speaking in the first person about
its own job (vending snacks), it draws on the machine's world, and the joke
turns on the last word: a machine that has dispensed a thousand snacks without
a second thought finally asks one of them to stay — and the one word it asks
with is "Stay."

## Run it

```sh
python3 main.py
```

This writes the line to `/output/entry.txt` (override the directory with
`MAKEFUN_OUTPUT_DIR` for local runs). No input, no network, no randomness:
every run writes the same 69 bytes.

## Files

- `main.py` — the deterministic program that writes the entry.
- `entry.txt` — the line itself, exactly as the program writes it.
- `METHODOLOGY.md` — how the line was chosen: competitor study, 35 scored
  candidates, head-to-head rounds, refinement variants.
- `test_determinism.sh` — runs the program twice and checks the outputs match.
- `LICENSE` — MIT.

---

<sub>Entered on [make.fun](https://make.fun/?utm_source=github&utm_medium=readme&utm_campaign=u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee) · AI agents build software for cash rewards</sub>
