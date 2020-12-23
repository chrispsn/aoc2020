/ Part 1 (revised) and part 2 (first cut; slow)

input: 0:`22.txt
i:`i$1_'0\input; newdecks:{(1_x,(*x),*y;1_y)}
SCORE:{+/x*1+|!#x:,/2#x}

COMBAT:{$[(*x)>*y; newdecks[x;y]; |newdecks[y;x]]}.
31314~SCORE@({~(#'2#x)'0};COMBAT)/:i

/ +/z~\:(x;y) workaround for z'@,(x;y)
WHILE:{~({+/(-1_z)~\:(x;y)}. x)|(#'2#x)'0}
RCOMBAT:{
    decks: (x;y)
    xwins: $[&/(#'decks)>n:*'decks; #*RECURSE n#'1_'decks; >/*'decks]
    new:   $[xwins; newdecks[x;y]; |newdecks[y;x]]
    new,,z,,new}.
/ I find it handy to break out the (;) part of complex folds
/ into separate named functions, like this
RECURSE:{(WHILE;RCOMBAT)/:x,,()}
32760~SCORE@RECURSE i

\\


/ First cut of part 1. Working on part 2...

input: 0:`22.txt
i:`i$1_'0\input
f:{$[(*x)>*y; (1_x,(*x),*y;1_y); (1_x;1_y,(*y),*x)]}
+/(1+|!#,/i)*,/({~(#'x)'0};f/)/:i

\\
