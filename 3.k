input:("..##......."
       "#...#...#.."
       ".#....#..#."
       "..#.#...#.#"
       ".#...##..#."
       "..#.##....."
       ".#.#.#....#"
       ".#........#"
       "#.##...#..."
       "#...##....#"
       ".#..#...#.#")

/ First cut (stole early compare from Phineas - previously did comparison in fn...)

input: "#"=0:`3.txt

dT: #input
rT: #*input

f:{+/{input[x][y]}/'(dT>*;@[;1;rT mod]x+)\:x}
f 1 3
*/f'(1 1;1 3;1 5;1 7;2 1)

/ Second cut: keeping it flat

inputs: 0:`3.txt
dT: #inputs
rT: #*inputs
inputs: "#"=,/inputs
f:{+/inputs@+/(1;rT)*@[++\(y div dT)#,x,y;0;rT mod]}/
191~f 3 1
1478615040~*/f'(1 1;3 1;5 1;7 1;1 2)

/ Third cut: tighten up

i: 0:`3.txt
r: #i; c: #*i
I: "#"=,/i
f: {+/I@+/(1;c)*(c;0)mod'+x*/:!r}
191~f 3 1
1478615040~*/f'(1 1;3 1;5 1;7 1;1 2)

/ Or, revised nested:
i: "#"=0:`3.txt
r: #i; c: #*i
f: {+/{i[y][x]}/'+(c;0)mod'+x*/:!r}    / would rather (I .)' instead of {I{y][x]} but broken in 2020.11.23 ?
191~f 3 1
1478615040~*/f'(1 1;3 1;5 1;7 1;1 2)

/ Finally, Attila's killer solution (with minor tweaks):

i:"#"=0:`3.txt
f:{+/x@'(#*x)mod y*!#x}
191~f[i;3]
1478615040~*/{f[i x*!#i]y}'[1 1 1 1 2; 1 3 5 7 1]

\\
