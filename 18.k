/ Second cut: rely on a nice overload...

i: 0:`18.txt
f:{@[|x; "()"; ")("]}
202553439706=+/.'f'i


/ First cut

i: 0:`18.txt
+/{splits: ("("{|/"()"'x,y}':)^/:" "\x
 . @[,/|,/splits; "()"; ")("]}'i

/ Part 2 in progress...
/ Trying to work around lack of string ? (for now) by using symbols,
/ but seem to be running into limits on symbol length (best guess)
/ so need to try a third way...

toSyms:`n$("("{|/"()+*"'x,y}':)^" "_
SB:`n$"("
PB:`n$"+"

br:{c:+\-1 0 1@(`n$'") (")?x; (f;f+((f:x?SB)_c)?0)}

/ cut could do this better?
/ {(0, br x)^x}toSyms@"hello(ok)then((hah!))ok"
eval:{$[=/i:br x
        afold x
        eval@,/((s-1)#x; eval@(e-s)#(s:1+*i)_x; (1+e::/i)_x)]}
afold: {$[(#x)>1+s:-1+x?PB
          afold@,/(s#x; `n$$.,/$3#s_x; (s+3)_x)
          `n$$. ,/$x]}
g: eval toSyms@

`14=g"2 * 3 + 4"
`3=g"((1+2))"
`11=g"1+(2*3)+4"
`36=g"(1+2)*(3*4)"
`23340=g"((2 + 4 * 9) * (6 + 9 * 8 + 6) + 6) + 2 + 4 * 2"
`51=g"1 + (2 * 3) + (4 * (5 + 6))"
`46=g"2 * 3 + (4 * 5)"
`1445=g"5 + (8 * 3 + 9 + 3 * 4 * 3)"
`669060=g"5 * 9 * (7 * 3 * 3 + 9 * 3 + (8 + 6 * 4))"
+/`i$$g'0:`18.txt
