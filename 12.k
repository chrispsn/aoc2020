/ First cut with minor edits

input: 0:`12.txt
/ input:("F10"; "N3"; "F7"; "R90"; "F11")

d:`inst`n!+(0 1)^/:input
d:@[d;`inst;*']
d:@[d;`n;`i$]
t:+d

/ Part 1

DIR:"ESWN"; OFFSETS:(1 0;0 -1;-1 0;0 1); TURNS:"LFR"
offsets:{+/(t`n)*OFFSETS@DIR?t`inst}[]
/(4*100)+ is a workaround for k9 mod not yet modding negative values
direction:+/ +[(:TURNS'inst)#t] :(n*inst="F")*OFFSETS@4 mod(4*100)+\(90 div n)*-1+TURNS?inst
1424~+/{x|-x}'direction+offsets

/ Part 2

r:{(x;{(-y;x)}/)/:y}
seed:`ship`waypoint!(0 0;10 1)
a:{x, (x,y)(:$["F"=inst; `ship!ship+n*waypoint
             "LR"'inst; `waypoint!r[`i 4+(90 div n)*-1 1@"L"=inst;waypoint]   / eventually remove `i and 4+ in rotate
             `waypoint!waypoint+n*OFFSETS@DIR?inst])}/[seed;t]
/ +/{x|-x}a`ship
63447~-+/a`ship
/ nb: testing on version where `j is not right - ended up adding x and y manually

\\
