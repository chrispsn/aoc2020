/ Part 1

input: 0:`11.txt

ROWS:#input; COLS:#*input; MAX:ROWS*COLS
chairs: (^+!(ROWS;COLS)) @ c:&"L"=,/input
offsets:(,0 0)_,/{x,/:\:x}@-1 0 1
adjacent: chairs+/:\:offsets
adjacent:-8^{$[&/x within'((0;ROWS);(0;COLS)); COLS/x; MAX]}',/adjacent
chairs: c

next:{@[x&0b; chairs*{(x&4>y)|~x|y}[x@chairs;+/'x@adjacent]; 1b]}
EMPTY: MAX#0b
+/next/:EMPTY

/ Part 2 WIP...

\\

/ initial attempt below wasn't flat enough... = slow

input: 0:`11.txt
offsets:(,0 0)_,/{x,/:\:x}@-1 0 1
chairs: (^+!2##input)@&"L"=,/input
occupied: chairs!0
adjacent: chairs+/:\:offsets
next:{chairs!{(+(~y;4>y))@'x}[x[];+/+x@/:adjacent]}
+/next/:occupied
