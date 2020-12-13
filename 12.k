/ First cut with minor edits

input: 0:`12.txt
/ input:("F10"; "N3"; "F7"; "R90"; "F11")

d:`inst`n!+(0 1)^/:input
d:@[d;`inst;*']
d:@[d;`n;`i$]
t:+d

abs:{x|-x}

/ Part 1
DIR:"ESWN"; OFFSETS:(1 0;0 -1;-1 0;0 1); TURNS:"LFR"
offsets:+/ d :n*OFFSETS@DIR?inst
/(4*100)+ is a workaround for k9 mod not yet modding negative values
direction:+/ +[(:TURNS'inst)#t] :(n*inst="F")*OFFSETS@4 mod(4*100)+\(90 div n)*-1+TURNS?inst
1424~+/abs'direction+offsets

/ Part 2
rotate:{(x;{(-y;x)}/)/:y}
seed:`ship`waypoint!(0 0;10 1)
/ delete `i 4+ in rotate call
updates::$["F"=inst; `ship!ship+n*waypoint
           "LR"'inst; `waypoint!rotate[`i 4+(90 div n)*-1 1@"L"=inst;waypoint]   
           `waypoint!waypoint+n*OFFSETS@DIR?inst]
end:{x,(x,y) updates}/[seed;t]
63447~+/abs'end`ship

\\
