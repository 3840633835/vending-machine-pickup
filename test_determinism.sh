#!/bin/sh
# Determinism test: run main.py twice into two different dirs and
# require byte-identical output, and check the gate (1-200 chars).
set -e
cd "$(dirname "$0")"

rm -rf /tmp/det_a /tmp/det_b
mkdir -p /tmp/det_a /tmp/det_b

MAKEFUN_OUTPUT_DIR=/tmp/det_a python3 main.py
MAKEFUN_OUTPUT_DIR=/tmp/det_b python3 main.py

cmp /tmp/det_a/entry.txt /tmp/det_b/entry.txt
cmp /tmp/det_a/entry.txt entry.txt

CHARS=$(python3 -c "print(len(open('/tmp/det_a/entry.txt', encoding='utf-8').read()))")
BYTES=$(wc -c < /tmp/det_a/entry.txt)
echo "chars=$CHARS bytes=$BYTES"
test "$CHARS" -ge 1 && test "$CHARS" -le 200
test "$BYTES" -eq 69

echo "determinism OK"
