/ SECOND CUT (WIP optimisation)

input: 0:`11.txt

ROWS:#input; COLS:#*input; MAX:ROWS*COLS
chairs: (^+!(ROWS;COLS)) @ c:&"L"=,/input
offsets:(,0 0)_,/{x,/:\:x}@-1 0 1
OOB: {$[&/x within' ((0;ROWS);(0;COLS)); COLS/x; MAX]}
EMPTY: MAX#0b

adj: OOB''chairs+/:\:offsets
next:{@[x&0b; c*{(x&4>y)|~x|y}[x@c; +/'x@adj]; 1b]}
2247~+/next/:EMPTY

lines:offsets*/:\:1+!ROWS|COLS
cm:c,MAX
adj:{*cm#OOB'x+/:y}/:\:[chairs;lines]  / speed killer!
next:{@[x&0b; c*{(x&5>y)|~x|y}[x@c; +/'x@adj]; 1b]}
2011~+/next/:EMPTY


/ FIRST CUT

/ Part 1

input: 0:`11.txt

ROWS:#input; COLS:#*input; MAX:ROWS*COLS
chairs: (^+!(ROWS;COLS)) @ c:&"L"=,/input
offsets:(,0 0)_,/{x,/:\:x}@-1 0 1
OOB: {$[&/x within' ((0;ROWS);(0;COLS)); COLS/x; MAX]}

/ Part 1
adj: OOB''chairs+/:\:offsets
next:{@[x&0b; c*{(x&4>y)|~x|y}[x@c; +/'x@adj]; 1b]}
EMPTY: MAX#0b
2247~+/next/:EMPTY

/ Part 2 (super slow)
m:ROWS|COLS
cm:c,MAX
adj:{*cm#OOB'1_x+/:y*/:!m}/:\:[chairs;offsets]
next:{@[x&0b; c*{(x&5>y)|~x|y}[x@c; +/'x@adj]; 1b]}
2011~+/next/:EMPTY

\\

/ initial attempt below wasn't flat enough... = slow

input: 0:`11.txt
offsets:(,0 0)_,/{x,/:\:x}@-1 0 1
chairs: (^+!2##input)@&"L"=,/input
occupied: chairs!0
adjacent: chairs+/:\:offsets
next:{chairs!{(+(~y;4>y))@'x}[x[];+/+x@/:adjacent]}
+/next/:occupied
