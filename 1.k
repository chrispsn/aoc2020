/ setup
i:`i$0:`1.txt

/ attila's is the best so far - but left some notes below on my own approach

*/i#2020-i
*/i#2020-?,/i+\:i

/ first: k7 has a cmb primitive, so we can just do this (it's a bit slow):
/ {*/*(2020=+/)#i@cmb[x;#i]}'2 3

/ no `cmb` in k9 (yet).

/ solution assumes no repeated numbers - check this:
i~?i
/ no repeats - good. so 1010 not an answer in #1, so we can take with replacement
/ of course all of the below assumes 2020-a+b is not a repeat of a or b :)

/ approach 1: golf
t:i@+!2##i
*/t@*&~d:2020-+/+t
*/(t,'d)@*&i'd

/ approach 2: table without ksql
t:`a`b!i@!2##i
t:+t,`c!2020-+/t
*/*`c_(:~c)#t
*/*(:i'c)#t

/ approach 3: full ksql
t: +`a`b!i@!2##i
*/* select from t where 2020=a+b
*/* select from (update c:2020-a+b from t) where c in i

/ approach 4: ok fine, let's be pedantic
t: +`a`b!i@!2##i
*/* select from t where 2020=a+b
*/* select from (update c:2020-a+b from t) where (c in i) & ~c in (a;b)

/ approach 5: another way entirely from freekh
f:{*(~0=)#x'i}
f[{f[{f[{$[(x+y+z)=2020;x*y*z;0]}[x;y]]}[x]]}]
