/ Third cut - freq approach + comparison

/ Standard
6437 3229~(f:{a:(@[;0;1b]@~#')^0:`6.txt; +/'((#?,/)'a; (##/(`b@#')#)'a)})[]

/ Bitfields
i:(`i"{")#0b
6437 3229~(g:{a:(@[;0;1b]@~#')^0:`6.txt; (+/+/)'(|/'b;&/'(|/')#/:b:@[i;;1b]''a)})[]

/ Freqs
(`j 6437 3229)~(h:{a:freq'(@[;0;1b]@=':)^"\n",`c@1:`6.txt; +/'(-1+#'a;+/'a=-1+a@'"\n"}})[]
/ or can use seeded each-prior. compare:
/ "\n"=':
/ @[;0;1b]@=':

/ TIMES: 1771 1868 711


\t:1000 f[]
\t:1000 g[]
\t:1000 h[]

\\

/ Second cut - bitlist approach
input: 0:`6.txt

6437~+/(#?,/)'a:(@[;0;1b]@~#')^input
3229~+/(##/(`b@#')#)'a
i:(`i"{")#0b                               / bitlist
6437~+/+/|/'b:@[i;;1b]''`i a
3229~+/+/&/'(|/')#/:b

\t:1000 6437~+/(#?,/)'a:(@[;0;1b]@~#')^input
\t:1000 3229~+/(##/(`b@#')#)'a
\t:1000 6437~+/+/|/'b:@[i;;1b]''`i a       / maybe could amend at depth into a 2d bitlist? 1 dmend > n x amends
\t:1000 3229~+/+/&/'(|/')#/:b

\\

Times:
916
1733
1391
750

/ First cut
input: 0:`6.txt
6437~+/(#?,/)'a:(~#')_'(-1_1b,""~/:)^input
3229~+/(##/)'a

\\
