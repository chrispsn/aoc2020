input: 0:`8.txt
t:+d:`inst`arg!`n`i$+(" "\"+"_)'input

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

\\

alt for part 1 that relies on dict addition:

input: 0:`8.txt
t:+`inst`arg!`n`i$+(" "\"+"_)'input

exec:{x,:x           : [seen:seen,idx]
      x+(x,t[x`idx]) : [val:arg*inst=`acc
                        idx:(1;arg)inst=`jmp]}
while: {x :~seen'idx}
(while;exec)/: [val:0;idx:0;seen:!0]
