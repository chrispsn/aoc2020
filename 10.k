/ Golfed - array version

L:^0,input,m:3+|/input
*/1 3#freq-':L
D:L!L#/:L+\:1+!3              / D:L!{L#1+x+!3}'L
:/{@[x;D y;+;x y]}/[~!1+m;L]  / possibly :/{x[D y]+:x y}/[~!1+m;L]   but modified assignment in k9 only seems to return the values at the indexes you assign to


/ First cut

input:`i$0:`10.txt
/ input: 28 33 18 42 31 14 46 20 48 47 24 23 49 45 19 38 39 11 1 32 25 35 8 17 7 9 4 2 34 10 3  / 8
/ input: 16 10 15 5 1 11 7 19 6 12 4  / 19208

M:3+|/input
L:^0,input,M

2432~*/1 3#freq-':L

D: L!{L#1+x+!3}'L  / which nodes can this node get to directly?
start: (0!1)+L!0   / first node can get to itself one way
/ Propagate # of paths to this node, to next nodes
f: {next:D@y; score:x@y; x+next!score}
:/start f/L
input

\\


/ oK translation

input:105 124 42 52 71 41 1 85 148 90 155 112 35 134 145 39 161 160 34 54 15 165 8 20 46 49 108 151 60 7 48 154 63 147 132 98 158 33 137 45 140 121 22 62 111 141 167 131 74 93 2 142 113 21 162 61 3 19 101 9 102 115 70 12 84 6 114 107 97 133 64 80 78 91 79 14 168 87 159 30 94 77 40 125 47 27 38 166 86 26 23 67 127 28 16 169 13 92 106 57 118 126 83 146 29 130 53
M:3+|/input
L:{x@<x}0,input,M
D: L!{L^L^1+x+!3}'L 
start:((,0)!,1)+L!(#L)#0
f: {next:D@y; score:x@y; x+next!#[#next;score]}
*|f/[start;L]
