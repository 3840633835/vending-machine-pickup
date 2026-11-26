#!/usr/bin/env python3
"""Vending machine pickup line — make.fun bounty #42.

Writes one pickup line, spoken by a vending machine to a passing human,
to /output/entry.txt. Deterministic: the same line, byte for byte, on every
run. No input, no network, no randomness.
"""

import os

# The winning line, chosen in-session from 35 scored candidates
# (see METHODOLOGY.md). 69 characters, within the 200-character gate.
LINE = "I've vended a thousand snacks and never once asked one to stay. Stay."


def main():
    out_dir = os.environ.get("MAKEFUN_OUTPUT_DIR", "/output")
    os.makedirs(out_dir, exist_ok=True)
    path = os.path.join(out_dir, "entry.txt")
    with open(path, "w", encoding="utf-8", newline="") as f:
        f.write(LINE)
    try:
        os.chmod(path, 0o644)
    except OSError:
        pass


if __name__ == "__main__":
    main()
