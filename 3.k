/ First cut (stole early compare from Phineas - previously did comparison in fn...)

input: "#"=0:`3.txt

dT: #input
rT: #*input

f:{+/{input[x][y]}/'1_(dT>*;@[;1;rT mod]x+)\:0 0}
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

/ Third cut: tighten up (on phone, will check later)

inputs: 0:`3.txt
dT: #inputs
rT: #*inputs
inputs: "#"=,/inputs
f:{+/inputs@+/(1;rT)*@[1_x*!x[1]div dT;0;rT mod]}
191~f 3 1
1478615040~*/f'(1 1;3 1;5 1;7 1;1 2)
