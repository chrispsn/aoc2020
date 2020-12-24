/ Cut 2. Notice use of 'key' in part 2

input: 0:`8.txt
t:+d:`inst`arg!`n`i$+(" "\"+"_)'input

/ parameterised on x(inst table) and y(exec state)
exec:{y,:y           : [seen:seen,idx]         / replace with y[`seen],:y`idx
      y+(y,x[y`idx]) : [val:arg*inst=`acc
                        idx:(1;arg)inst=`jmp]}

stop:#t
while:{~(stop=x`idx)|x :seen'idx}
f:{(while;exec[x])/: [val:0;idx:0;seen:!0]}

/ Part 1
f[t]

/ Part 2
nop:{.[t;(x;`inst);`jmp]}'&`nop=d`inst
jmp:{.[t;(x;`inst);`nop]}'&`jmp=d`inst
(`idx key f'nop,jmp) [idx:stop]
`val#({x@=(+x)`idx}@f'nop,jmp)stop      / alt

\\


/ Cut 1

input: 0:`8.txt
t:+d:`inst`arg!`n`i$+(" "\"+"_)'input

/ parameterised on x(seed table) and y(state)
exec:{e:: [val:arg*inst=`acc;idx:(1;arg)inst=`jmp]
      @[y;`seen;,;y`idx]+(y,x[y`idx])e}

while:{~((#t)=x`idx)|x :seen'idx}
f:{(while;exec[x])/: [val:0;idx:0;seen:!0]}

/ Part 1
f[t]

/ Part 2 - not nice...
nop:{.[t;(x;`inst);`jmp]}'&`nop=d`inst
jmp:{.[t;(x;`inst);`nop]}'&`jmp=d`inst
*@[{(+x)@&(#t)=x`idx}@+{f[x]}'nop,jmp; :val]
