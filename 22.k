/ Working on part 2 - need to integrate the seen-same-game rule {[decks;history]...} ?

i:`i$1_'0\input; newdecks:{(1_x,(*x),*y;1_y)}
C:{$[(*x)>*y; newdecks[x;y]; |newdecks[y;x]]}/
SCORE: {+/(1+|!#,/i)*,/({~(#'x)'0};x)/:i}

/ Part 1
SCORE[C]

/ Part 2
RC:{xwins: $[&/(#'(x;y))>n:*'(x;y)
             #*({~(#'x)'0};RC)/:RC[n#'1_'(x;y)]
             (*x)>*y]
    $[xwins; newdecks[x;y]; |newdecks[y;x]]}/
SCORE[RC]


/ First cut of part 1. Working on part 2...

input: 0:`22.txt
i:`i$1_'0\input
f:{$[(*x)>*y; (1_x,(*x),*y;1_y); (1_x;1_y,(*y),*x)]}
+/(1+|!#,/i)*,/({~(#'x)'0};f/)/:i

\\
