/ Second cut: convert string descriptions to ints, and switch from ~ to = (big speedup)
/ Don't like the capture of c (would prefer to just capture counts straight up)
/ and would still like to remove the =/:\:

input: 0:`7.txt

i:({"no"~x[4]}')_" "\'input   / empty bags stay out of table
I:`iq`id!{(`i$x;y,'z)} . -1_ + ,/c:(-4^4_)'i
O:`o!(,/'2#/:i)@&#'c
d:O,I

/ Symbol workaround: convert strings to ints
alldesc: d :id,o
START:alldesc?"shinygold"
d:@[d; `o; alldesc?]
t:+d:@[d; `id; alldesc?]

/ Part 1
f:{?x,t[&(t`id)in x] :o}
326~-1+#f/:,START

/ Part 2
f:{(t @& +/ x=/:\:t`o) :id @& iq}
5635~-1+/#'f\:,START

\\


/ First cut - would rather use symbols instead of strings,
/ and maybe index into a pre-grouped table in part 2 instead of doing the ~/:\:

input: 0:`7.txt
START:"shinygold"

i:" "\'input
O:+`o!,/'2#/:i                                             / outies (descr only)
I:({(`iq`id!(x;y,z))} .'' +' .[;(;0);`i$]@ -1_'+'-4^'4_'i) / innies (quantity, descr)
t:,/O,/:'I

/ Part 1
f:{?x,(t@&x't`id)`o}
326~-1+#f/:,START

/ Part 2
f:{{(x`id) @& x`iq} t @& +/ x~/:\:t`o}
5635~-1+/#'f\:,START

\\
