/ SECOND CUT (WIP optimisation)

INPUT: 0:`11.txt

CELLCOUNT:*/DIM:(ROWS:#INPUT;COLS:#*INPUT)
CHAIRS: (^+!DIM) @ C:&"L"=,/INPUT
OFFSETS:(,0 0)_+-1+!3 3
EMPTY: CELLCOUNT#0b

next:{[LIMIT;x] a:x@C; b:+/'x@ADJACENT; @[x&0b; C*(a&LIMIT>b)|~a|b; 1b]}
ingrid: &/&/(-1<;DIM>)@\:  / takes flipped

/ nb: faster flat:
/ 5252: \t:100 ADJACENT:{flat:,/x; (-#OFFSETS)^(+(CELLCOUNT;COLS/f))@'ingrid@f:+flat}@CHAIRS+/:\:OFFSETS
/ abt same: \t:100 ADJACENT:{(-#OFFSETS)^(+(CELLCOUNT;COLS/f))@'ingrid@f:+x}@(&CHAIRS!8)+(8*#CHAIRS)#OFFSETS
/ 7205: \t:100 ADJACENT:{+[(CELLCOUNT;COLS/f)]@'ingrid@f:+x}'CHAIRS+/:\:OFFSETS
ADJACENT:{(-#OFFSETS)^(+(CELLCOUNT;COLS/f))@'ingrid@f:+flat:,/x}@CHAIRS+/:\:OFFSETS
2247~+/next[4]/:EMPTY

LINES:OFFSETS*/:\:1+!|/DIM
ADJACENT:{*x,CELLCOUNT}''{C#COLS/+(ingrid@+)#x+/:y}/:\:[CHAIRS;LINES]   / speed killer!
2011~+/next[5]/:EMPTY

\\


/ potential insight yet to be used:
/ to the chair to my right,
/ i am the chair to its left...
/ pre-compile a table of neighbours on that basis?
/ (work down each line)


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
