/ First cut - would rather use symbols instead of strings,
/ and maybe index into a pre-grouped table in part 2 instead of doing the ~/:\:

input: 0:`7.txt
START:"shinygold"

i:" "\'input
O:+`o!,/'2#/:i                                          / outies (descr only)
I:({(`iq`id!(x;y,z))} .'' +'+@[;0;`i$]@+-1_'+'-4^'4_'i) / innies (quantity, descr)
t:,/O,/:'I

/ Part 1
f:{?x,(t@&x't`id)`o}
326~-1+#f/:,START

/ Part 2
r: {(x`id) @& x`iq}
START2: r t @& START~/:t`o
f:{r t @& +/ x~/:\:t`o}
5635~+/#'f\:START2

\\
