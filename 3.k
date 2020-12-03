/ First cut (stole early compare from Phineas - previously did comparison in fn...)

input: "#"=0:`3.txt

dT: #input
rT: #*input

f:{+/{input[x][y]}/'1_(dT>*;(@[;1;rT mod]x+))\:0 0}
f 1 3
*/f'(1 1;1 3;1 5;1 7;2 1)
