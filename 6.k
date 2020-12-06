/ Third cut - freq approach + comparison

/ Standard
\t:1000 6437 3229~{a:(@[;0;1b]@~#')^0:`6.txt
 (+/(#?,/)'a; +/(##/(`b@#')#)'a)}[]

/ Bitlists
\t:1000 6437 3229~{a:(@[;0;1b]@~#')^0:`6.txt
 (+/+/)'(|/'b;&/'(|/')#/:b:@[i;;1b]''a)}[]

/ Freqs
\t:1000 (`j 6437 3229)~{a:(@[;0;1b]@=':)^"\n",`c@1:`6.txt
 +/'{(-1+(#?)'x;+/'(-1+a@'"\n")=a:freq'x)}a}[]
 
/ timings: 2653 2636 1085


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
