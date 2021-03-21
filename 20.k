/ Still need to do part 2!

/ Second cut - a bit cleaner at last step...

data:0 1^/:1_'(~#')^(,""),-1_0:`20.txt
id:`i$(-1_5_**)'data; tiles:"#"=:/'data
r:+|; edges:,/{e:*'(3;r)\:x; e,|'e}'tiles                / faster:,/{e:(*x;:/x;*+x;:/+x); e,|'e}'tiles
*/&4=#'=(&id!8)@,/(1=#')#=2/+edges 


/ First cut (approx); part 1 done, part 2 in progress

data:0 1^/:0\-1_0:`20.txt
id:`i$(-1_5_**)'data; tiles:"#"=:/'data
edges:,/{e:(*x;:/x;*+x;:/+x); e,|'e}'tiles
g:=10/+edges
*/*(,4)#=freq*+(&id!8)(1=#')#. g
