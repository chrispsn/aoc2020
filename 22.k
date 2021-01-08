/ Part 1 (revised) and part 2 (~first~ second cut; v slow)

input: 0:`22.txt
i:`i$1_'0\input
NEWDECKS:{(1_x,(*x),*y;1_y)}
ROUND:{$[XWINS x; NEWDECKS/x; |NEWDECKS/|x]}

SCORE:{+/x*|1+!#x:,/x}

WHILE:&/#'
XWINS:>/*'
NEXT:ROUND
SCORE@(WHILE;NEXT)/:i

/ data: (deck;history)
WHILE:{(~+/x~/:y) & &/#'x}/    / workaround for '~ x in y'
XWINS:{head:*'x; $[&/head<#'x; **GAME@head#'1_'x; >/head]}
NEXT:{(ROUND x;y,,x)}/
GAME:{(WHILE;NEXT)/:(x;())}
SCORE@*GAME i

\\


/ First cut of part 1. Working on part 2...

input: 0:`22.txt
i:`i$1_'0\input
f:{$[(*x)>*y; (1_x,(*x),*y;1_y); (1_x;1_y,(*y),*x)]}
+/(1+|!#,/i)*,/({~(#'x)'0};f/)/:i

\\
