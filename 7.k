/ Second cut: convert string descriptions to ints, and switch from ~ to = (big speedup)

input: 0:`7.txt

i:" "\'input
O:+`o!,/'2#/:i                                             / outies (descr only)
I:({(`iq`id!(x;y,z))} .'' +' .[;(;0);`i$]@ -1_'+'-4^'4_'i) / innies (quantity, descr)
t:,/O,/:'I

/ Symbol workaround: convert strings to ints
alldesc: (t`id),t`o
START:alldesc?"shinygold"
t:+@[+t; `o; alldesc?]
t:+@[+t; `id; alldesc?]

/ Part 1
f:{?x,(t@&x't`id)`o}
326~-1+#f/:,START

/ Part 2
f:{{(x`id) @& x`iq} t @& +/ x=/:\:t`o}
5635~-1+/#'f\:,START


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
