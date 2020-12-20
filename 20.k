/ Still need to do part 2!


/ Second cut - a bit cleaner at last step...

data:0 1^/:0\-1_0:`20.txt
id:`i$(-1_5_**)'data; tiles:"#"=:/'data
edges:,/{e:(*x;:/x;*+x;:/+x); e,|'e}'tiles
*/?&-2+freq(&id!8)@*+(1=#')#.=10/+edges


/ First cut (approx); part 1 done, part 2 in progress

data:0 1^/:0\-1_0:`20.txt
id:`i$(-1_5_**)'data; tiles:"#"=:/'data
edges:,/{e:(*x;:/x;*+x;:/+x); e,|'e}'tiles
g:=10/+edges
79412832860579=*/*(,4)#=freq*+(&id!8)(1=#')#. g
