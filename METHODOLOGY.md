# Methodology — bounty #42: vending machine pickup line

## The competition

"One Line, One Minute: The Vending Machine Pickup Line Contest"
(`u-brisk-kestrel-93-one-line-one-minute-the-vending-376bbeee`), $2, free
entry, deadline 2026-11-26T09:35:00Z. The program writes one pickup line of
at most 200 characters to `/output/entry.txt`. A judge model compares lines
two at a time against a published brief, weighing in order:

1. The line is a pickup line a vending machine would use on a passing
   human, spoken by the machine itself.
2. It uses the machine's own world — slot, buttons, coils, snacks, hum,
   exact change.
3. It gets a laugh, with the turn or punch arriving in the last few words.
4. It is short and speakable, one line read in a breath.
5. It is charming rather than creepy.

Blind rounds run; the top 500 entrants on the development board go to the
final heat, then 3 Swiss rounds and a playoff among the top 12. The field
had ~3,163 submissions at build time.

## Competitor study

Sampled 1,200 public submission titles from the open submissions feed
(titles only, for ideas — no line was copied). Angle counts in the sample:

| Angle | Titles |
|---|---|
| press (any button) | 166 |
| button codes B7 / A1 / C4 | 154 |
| coil | 120 |
| exact change | 110 |
| stuck | 36 |
| coin / insert coin | 26 |
| sweet / sugar | 26 |
| hum | 25 |
| slot | 13 |
| dropped your snack on purpose | 12 |
| crush | 10 |
| dispense | 9 |
| refund / change back | 9 |
| glass between us | 8 |
| chips | 5 |
| thirsty / drink | 5 |
| sold out | 4 |
| candy | 2 |
| craving | 1 |
| selection | 1 |

The crowded angles — "press B7", coils, exact change, stuck — were deliberately
avoided. The fresh territory was the machine's less-used world: the flap,
the coin return, the LED display, the out-of-order sign, the compressor,
the restock, the sold-out light, the nutrition label, the thud of a snack
dropping, the "PLEASE MAKE A SELECTION" prompt.

## Candidates

35 fresh lines were written in-session and scored 0–50 against the judge
brief: machine voice /15, machine world /15, laugh and punch /10, short and
speakable /5, charming /5. Full table in `../candidates.md`. Top 8:

| # | Line | Score | Chars |
|---|---|---|---|
| 12 | I've vended a thousand snacks and never once asked one to stay. Stay. | 47 | 69 |
| 29 | I vend snacks, not feelings — but you just made me dispense both. | 46 | 65 |
| 17 | My coin return has never given anything back. For you, I'd make change. | 46 | 71 |
| 3 | That thud when a snack drops? That's my heart every time you walk by. | 46 | 69 |
| 2 | My display has flashed PLEASE MAKE A SELECTION for three years. You just made it. | 46 | 81 |
| 24 | No coins, no card, no problem — I'd vend for you on credit, forever. | 44 | 68 |
| 13 | Everything in me is ice cold, but you just made my compressor overheat. | 44 | 71 |
| 8 | Buy one, get one free: the chips are a dollar, and I'm the free one. | 44 | 68 |

## Head-to-head (top 5)

- **#12 vs #2:** #12 is shorter (69 vs 81 chars) and its punch is a single
  imperative word, "Stay." — more speakable. #2's double meaning ("made a
  selection") is clever but needs a beat to land. #12 wins on criteria 3+4.
- **#12 vs #3:** both strong machine voice; #3's punch ("my heart") is a
  sweet simile, while #12's "Stay." is a direct address with a turn. #12 wins.
- **#12 vs #29:** #29's "dispense both" is a clean machine-verb joke, but
  "feelings" is generic love talk (criterion 2 weaker); #12 keeps the whole
  line inside the machine's job. #12 wins.
- **#12 vs #17:** #17's "make change" pun is clever, but the coin return sits
  next to the crowded exact-change cluster; #12's angle — a machine that has
  vended a thousand snacks and never asked one to stay — is uncontested.
  #12 wins.

## Refinement variants of the winner

- **V1 (chosen):** "I've vended a thousand snacks and never once asked one
  to stay. Stay."
- **V2:** "I've vended a thousand snacks, and you're the first one I've ever
  asked to stay." — rejected: the punch is buried mid-sentence, no turn at
  the end.
- **V3:** "A thousand snacks have fallen through my flap, and you're the
  first one I want to keep." — rejected: "fallen through me" reads gross;
  "keep" is weaker than the imperative "Stay."
- **V4:** "I've dropped a thousand snacks and never once asked one to stay.
  Stay." — rejected: "dropped" echoes the crowded "dropped your snack on
  purpose" cluster.
- **V5:** "I've vended ten thousand snacks and never asked one to stay. You
  — stay." — rejected: "ten thousand" is less believable and less speakable;
  the em-dash break dilutes the punch.

## Why the winner wins

- **Criterion 1 (machine speaking):** first person throughout, and only a
  vending machine can say "I've vended a thousand snacks". No stranger in a
  bar could say this line.
- **Criterion 2 (machine's world):** the line is built from the machine's
  job itself — vending snacks — not from generic love talk.
- **Criterion 3 (laugh, punch at the end):** the turn lands on the last
  word. A machine dispenses snacks without a second thought; this one
  finally asks one to stay, and asks with a single word: "Stay."
- **Criterion 4 (short and speakable):** 69 characters, two short sentences,
  read in one breath.
- **Criterion 5 (charming, not creepy):** warm and a little wistful — a
  machine that has watched a thousand snacks leave and only now wants one
  to stay. Nothing grabby, nothing that makes a passer-by walk faster.

## The entry

`main.py` writes exactly this line to `/output/entry.txt`, 69 bytes, no
trailing newline, mode 0644. Verified with `wc -c` and by running the
program twice (`test_determinism.sh`).
