/ Part 1 (revised) and part 2 (first cut; v slow)
/ Need to unify 'score' functions...

input: 0:`22.txt
i:`i$1_'0\input
NEWDECKS:{(1_x,(*x),*y;1_y)}

SCORE:{+/x*1+|!#x:,/2#x}
COMBAT:{$[(*x)>*y; NEWDECKS[x;y]; |NEWDECKS[y;x]]}/
31314~SCORE@({~(#'2#x)'0};COMBAT)/:i

/ data: (deck;history)
SCORE:{+/x*1+|!#x:,/*x}
WHILE:{~(+/(-1_y)~\:x)|(#'x)'0}/                      
RCOMBAT:{
    xwins: $[&/(#'x)>n:*'x; #**GAME@n#'1_'x; >/n]
    new:   $[xwins; NEWDECKS/x; |NEWDECKS/|x]
    (new;y,,new)}/
GAME:{(WHILE;RCOMBAT)/:(x;())}
32760~SCORE@GAME i

\\

/ nb above:
/ +/(-1_y)~\:x workaround for *y'@,x

/ First cut of part 1. Working on part 2...

input: 0:`22.txt
i:`i$1_'0\input
f:{$[(*x)>*y; (1_x,(*x),*y;1_y); (1_x;1_y,(*y),*x)]}
+/(1+|!#,/i)*,/({~(#'x)'0};f/)/:i

\\
