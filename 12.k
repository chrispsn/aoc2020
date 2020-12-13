/ First cut

input: 0:`12.txt
/ input:("F10"; "N3"; "F7"; "R90"; "F11")

d:`inst`n!+(0 1)^/:input
d:@[d;`inst;*']
d:@[d;`n;`i$]
t:+d

/ Part 1

DIR:"ESWN"; OFFS:(1 0;0 -1;-1 0;0 1); TURNS:"LFR"
offsets:{+/(t`n)*OFFS@DIR?t`inst}[]
/(4*100)+ is a workaround for k9 mod not yet modding negative values
direction:{a:(:TURNS'inst)#t
           +/(a :n*inst="F")*OFFS@4 mod(4*100)+\(90 div a`n)*b:-1+TURNS?a`inst}[]
1424~+/{x|-x}'direction+offsets

/ Part 2

r:{(x;{(-y;x)}/)/:y}
seed:`ship`waypoint!(0 0;10 1)
a:{x, (x,y)(:$["F"=inst; `ship!ship+n*waypoint
             "LR"'inst; `waypoint!r[`i 4+(90 div n)*-1 1@"L"=inst;waypoint]   / eventually remove `i and 4+ in rotate
             `waypoint!waypoint+n*OFFS@DIR?inst])}/[seed;t]
/ +/{x|-x}a`ship
+/a`ship
/ nb: testing on version where `j is not right - ended up adding x and y manually

\\
