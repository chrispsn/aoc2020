/ Part 1 (revised) and part 2 (~first~ second cut; v slow)
/ Need to unify 'score' functions... and maybe share GAME

input: 0:`22.txt
i:`i$1_'0\input
ND:{(1_x,(*x),*y;1_y)}
ROUND:{$[x@y; ND/y; |ND/|y]}

SCORE:{+/x*1+|!#x:,/x}
XWINS:>/*'
WHILE:&/#'
SCORE@(WHILE; ROUND[XWINS])/:i

/ data: (deck;history)
SCORE:{+/x*1+|!#x:,/*x}
WHILE:{(~+/x~/:-1_y) & &/#'x}/        / workaround for ~x in -1_y
XWINS: {$[&/(#'x)>n:*'x; #**GAME@n#'1_'x; >/n]}
RCOMBAT:{new:ROUND[XWINS]x; (new;y,,new)}/
GAME:{(WHILE;RCOMBAT)/:(x;())}
SCORE@GAME i

\\


/ nb above:
/ +/(-1_y)~\:x workaround for *y'@,x

/ First cut of part 1. Working on part 2...

input: 0:`22.txt
i:`i$1_'0\input
f:{$[(*x)>*y; (1_x,(*x),*y;1_y); (1_x;1_y,(*y),*x)]}
+/(1+|!#,/i)*,/({~(#'x)'0};f/)/:i

\\
