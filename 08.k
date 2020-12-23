/ Part 1 below - part 2 in progres

input: 0:`8.txt
t:+`inst`arg!`n`i$+(" "\"+"_)'input

exec:{e:: [val:val+arg*inst=`acc
           idx:idx+(1;arg)inst=`jmp
           seen:seen,idx]
      (x,t[x`idx]) e}
while: {x :~seen'idx}
(while;exec)/: [val:0;idx:0;seen:!0]

\\

alt for part 1 that relies on dict addition:

input: 0:`8.txt
t:+`inst`arg!`n`i$+(" "\"+"_)'input

exec:{x,:x           : [seen:seen,idx]
      x+(x,t[x`idx]) : [val:arg*inst=`acc
                        idx:(1;arg)inst=`jmp]}
while: {x :~seen'idx}
(while;exec)/: [val:0;idx:0;seen:!0]
